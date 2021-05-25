Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # READ ALL
  get "tasks", to: "tasks#index"

  # CREATE (FORM)
  get "tasks/new", to: "tasks#new", as: "new_task"

  # CREATE (AFFECT DB)
  post "tasks", to: "tasks#create"

  # READ ONE
  get "tasks/:id", to: "tasks#show", as: "task"

  # UPDATE (FORM)
  get "tasks/:id/edit", to: "tasks#edit", as: "edit_task"

  # UPDATE (AFFECT DB)
  patch "tasks/:id", to: "tasks#update"

  # DELETE
  delete "tasks/:id", to: "tasks#destroy"

end
