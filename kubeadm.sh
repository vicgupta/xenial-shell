
#!/bin/sh

#install kubeadm, kubectl, kubelet

sudo apt update
sudo apt install -y docker.io 
sudo systemctl enable docker.service
sudo apt install -y software-properties-common apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-add-repository "deb http://apt.kubernetes.io kubernetes-xenial main"
sudo apt-get update
sudo apt-get install -y kubeadm kubectl kubelet
sudo swapoff -a
sudo apt-get upgrade -y
