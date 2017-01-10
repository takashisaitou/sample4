class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  include ApplicationHelper

  private

  def configure_permitted_parameters
    # devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    # devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
  protect_from_forgery with: :exception
  def default_url_options() {privateIp: '10.0.0.31', containerPort: '3000', languageName: 'rails'}.merge(super) end
end
