defmodule Issues.MixProject do
  use Mix.Project

  def project do
    [
      app: :issues,
      version: "0.1.0",
      name: "Github Issues",
      source_url: "https://github.com/ykhom/github_issues_app",
      elixir: "~> 1.7",
      escript: escript_config(),
      start_permanent: Mix.env() == :prod,
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ],
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      { :httpoison, "> 1.0.0" },
      { :poison, "> 4.0.0" },
      { :ex_doc, "> 0.19.0"},
      { :earmark, "> 1.3.0"},
      {:excoveralls, "~> 0.10", only: :test},
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
  defp escript_config do
    [
        main_module: Issues.CLI
    ]
  end
end
