Rails.application.routes.draw do
  root to:"cocktails#index"
  get 'doses/new'
  get 'doses/delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: %i[new create]
  end

  resources :ingredients, only: %i[index show]
end
