
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pcap_rdmasniff {unsigned int port_num; struct ibv_device* rdma_device; } ;
struct ibv_device {char const* name; } ;
struct TYPE_4__ {struct pcap_rdmasniff* priv; int activate_op; } ;
typedef TYPE_1__ pcap_t ;


 int ibv_free_device_list (struct ibv_device**) ;
 struct ibv_device** ibv_get_device_list (int*) ;
 TYPE_1__* pcap_create_common (char*,int) ;
 int rdmasniff_activate ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;
 int strncmp (char const*,char const*,size_t) ;
 unsigned int strtoul (char const*,int *,int) ;

pcap_t *
rdmasniff_create(const char *device, char *ebuf, int *is_ours)
{
 struct pcap_rdmasniff *priv;
 struct ibv_device **dev_list;
 int numdev;
 size_t namelen;
 const char *port;
 unsigned port_num;
 int i;
 pcap_t *p = ((void*)0);

 *is_ours = 0;

 dev_list = ibv_get_device_list(&numdev);
 if (!dev_list || !numdev) {
  return ((void*)0);
 }

 namelen = strlen(device);

 port = strchr(device, ':');
 if (port) {
  port_num = strtoul(port + 1, ((void*)0), 10);
  if (port_num > 0) {
   namelen = port - device;
  } else {
   port_num = 1;
  }
 } else {
  port_num = 1;
 }

 for (i = 0; i < numdev; ++i) {
  if (strlen(dev_list[i]->name) == namelen &&
      !strncmp(device, dev_list[i]->name, namelen)) {
   *is_ours = 1;

   p = pcap_create_common(ebuf, sizeof (struct pcap_rdmasniff));
   if (p) {
    p->activate_op = rdmasniff_activate;
    priv = p->priv;
    priv->rdma_device = dev_list[i];
    priv->port_num = port_num;
   }
   break;
  }
 }

 ibv_free_device_list(dev_list);
 return p;
}
