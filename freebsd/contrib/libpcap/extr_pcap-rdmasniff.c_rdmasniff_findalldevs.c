
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_device {int name; } ;
typedef int pcap_if_list_t ;


 int add_dev (int *,int ,int ,char*,char*) ;
 int ibv_free_device_list (struct ibv_device**) ;
 struct ibv_device** ibv_get_device_list (int*) ;

int
rdmasniff_findalldevs(pcap_if_list_t *devlistp, char *err_str)
{
 struct ibv_device **dev_list;
 int numdev;
 int i;
 int ret = 0;

 dev_list = ibv_get_device_list(&numdev);
 if (!dev_list || !numdev) {
  return 0;
 }

 for (i = 0; i < numdev; ++i) {




  if (!add_dev(devlistp, dev_list[i]->name, 0, "RDMA sniffer", err_str)) {
   ret = -1;
   goto out;
  }
 }

out:
 ibv_free_device_list(dev_list);
 return ret;
}
