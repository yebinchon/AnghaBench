
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upnp_wps_device_sm {int started; int multicast_sd; int ssdp_sd; int mac_addr; int ip_addr_text; int ip_addr; scalar_t__ advertise_count; } ;


 int MSG_INFO ;
 scalar_t__ add_ssdp_network (char*) ;
 scalar_t__ advertisement_state_machine_start (struct upnp_wps_device_sm*) ;
 scalar_t__ get_netif_info (char*,int *,int *,int ) ;
 scalar_t__ ssdp_listener_start (struct upnp_wps_device_sm*) ;
 scalar_t__ ssdp_open_multicast (struct upnp_wps_device_sm*) ;
 int upnp_wps_device_stop (struct upnp_wps_device_sm*) ;
 scalar_t__ web_listener_start (struct upnp_wps_device_sm*) ;
 int wpa_printf (int ,char*,char*) ;

__attribute__((used)) static int upnp_wps_device_start(struct upnp_wps_device_sm *sm, char *net_if)
{
 if (!sm || !net_if)
  return -1;

 if (sm->started)
  upnp_wps_device_stop(sm);

 sm->multicast_sd = -1;
 sm->ssdp_sd = -1;
 sm->started = 1;
 sm->advertise_count = 0;


 if (add_ssdp_network(net_if))
  goto fail;


 if (get_netif_info(net_if, &sm->ip_addr, &sm->ip_addr_text,
      sm->mac_addr)) {
  wpa_printf(MSG_INFO, "WPS UPnP: Could not get IP/MAC address "
      "for %s. Does it have IP address?", net_if);
  goto fail;
 }




 if (web_listener_start(sm))
  goto fail;


 if (ssdp_listener_start(sm))
  goto fail;


 if (ssdp_open_multicast(sm) < 0)
  goto fail;






 if (advertisement_state_machine_start(sm))
  goto fail;

 return 0;

fail:
 upnp_wps_device_stop(sm);
 return -1;
}
