Rails.application.routes.draw do
  namespace :api do
    resources :messages, only: [:show, :create], defaults: { format: 'json' }
  end

  get '/message/:id', to: 'pages#show'
  root to: 'pages#show'
end
