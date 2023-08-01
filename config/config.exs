import Config

# Temp Ash config that the docs say will be able to be removed in the future.
config :ash, :use_all_identities_in_manage_relationship?, false

config :helpdesk,
  ash_apis: [Helpdesk.Support]

config :helpdesk,
  ecto_repos: [Helpdesk.Repo]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
