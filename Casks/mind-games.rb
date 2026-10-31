cask "mind-games" do
  arch arm: "arm64", intel: "x64"

  version "1.0.4"
  sha256 arm:   "c2b0cd6df869652e3d48631a97505eff11bf2b221d259790c155fec8f3aa87e9",
         intel: "4f46ee78bac2fd33f32e92a8f7dcd22e74630a2e463d345887dbdc267d0494a1"

  url "https://github.com/theraghavraman/mindgames/releases/download/v#{version}/Mind-Games-#{version}-mac-#{arch}.dmg"
  name "Mind Games"
  desc "54 mind games: Sudoku variants, logic puzzles, duels and brain training"
  homepage "https://theraghavraman.github.io/mindgames/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Mind Games.app"

  zap trash: [
    "~/Library/Application Support/Mind Games",
    "~/Library/Preferences/io.github.theraghavraman.mindgames.plist",
    "~/Library/Saved Application State/io.github.theraghavraman.mindgames.savedState",
  ]
end
