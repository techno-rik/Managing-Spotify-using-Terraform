resource "spotify_playlist" "bollywood" {
  name = "Bollywood"
  tracks =  ["131yybV7A3TmC34a0qE8u8"]
}


data "spotify_search_track" "eminem" {
  artist = "Eminem"
  limit = 10
}

resource "spotify_playlist" "slimShady" {
  name = "Slim Shady"
  tracks = [ data.spotify_search_track.eminem.tracks[0].id,
  data.spotify_search_track.eminem.tracks[1].id,
  data.spotify_search_track.eminem.tracks[2].id,
  data.spotify_search_track.eminem.tracks[3].id]
}