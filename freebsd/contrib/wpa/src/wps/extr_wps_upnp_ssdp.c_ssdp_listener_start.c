
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upnp_wps_device_sm {int ssdp_sd_registered; int ssdp_sd; } ;


 int EVENT_TYPE_READ ;
 int MSG_ERROR ;
 scalar_t__ eloop_register_sock (int ,int ,int ,int *,struct upnp_wps_device_sm*) ;
 int ssdp_listener_handler ;
 int ssdp_listener_open () ;
 int ssdp_listener_stop (struct upnp_wps_device_sm*) ;
 int wpa_printf (int ,char*) ;

int ssdp_listener_start(struct upnp_wps_device_sm *sm)
{
 sm->ssdp_sd = ssdp_listener_open();

 if (eloop_register_sock(sm->ssdp_sd, EVENT_TYPE_READ,
    ssdp_listener_handler, ((void*)0), sm))
  goto fail;
 sm->ssdp_sd_registered = 1;
 return 0;

fail:

 wpa_printf(MSG_ERROR, "WPS UPnP: ssdp_listener_start failed");
 ssdp_listener_stop(sm);
 return -1;
}
