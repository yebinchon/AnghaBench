
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upnp_wps_device_sm {int subscriptions; } ;


 int dl_list_empty (int *) ;

int upnp_wps_subscribers(struct upnp_wps_device_sm *sm)
{
 return !dl_list_empty(&sm->subscriptions);
}
