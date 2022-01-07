
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upnp_wps_device_sm {scalar_t__ multicast_sd; int ip_addr; } ;


 scalar_t__ ssdp_open_multicast_sock (int ,int *) ;

int ssdp_open_multicast(struct upnp_wps_device_sm *sm)
{
 sm->multicast_sd = ssdp_open_multicast_sock(sm->ip_addr, ((void*)0));
 if (sm->multicast_sd < 0)
  return -1;
 return 0;
}
