Rails.application.routes.draw do
  devise_for :users
  root                 'static_pages#home'
  get 'about'       => 'static_pages#about'
  get 'suggestions' => 'suggestions#show'
  
  resources :suggestions, only: [:create, :destroy]
end
