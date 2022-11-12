resource "google_compute_instance" "terraform" {
  project = "<PROJECT_ID>"
  name    = "terraform"
  #machine_type = "n1-standard-1"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}
