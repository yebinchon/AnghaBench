
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upnp_wps_device_sm {int multicast_sd; scalar_t__ started; int * ip_addr_text; int * wlanevent; int subscriptions; int msearch_replies; } ;


 int MSG_DEBUG ;
 int advertisement_state_machine_stop (struct upnp_wps_device_sm*,int) ;
 int close (int) ;
 int event_send_stop_all (struct upnp_wps_device_sm*) ;
 int os_free (int *) ;
 int ssdp_listener_stop (struct upnp_wps_device_sm*) ;
 int upnp_wps_free_msearchreply (int *) ;
 int upnp_wps_free_subscriptions (int *,int *) ;
 int web_listener_stop (struct upnp_wps_device_sm*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void upnp_wps_device_stop(struct upnp_wps_device_sm *sm)
{
 if (!sm || !sm->started)
  return;

 wpa_printf(MSG_DEBUG, "WPS UPnP: Stop device");
 web_listener_stop(sm);
 ssdp_listener_stop(sm);
 upnp_wps_free_msearchreply(&sm->msearch_replies);
 upnp_wps_free_subscriptions(&sm->subscriptions, ((void*)0));

 advertisement_state_machine_stop(sm, 1);

 event_send_stop_all(sm);
 os_free(sm->wlanevent);
 sm->wlanevent = ((void*)0);
 os_free(sm->ip_addr_text);
 sm->ip_addr_text = ((void*)0);
 if (sm->multicast_sd >= 0)
  close(sm->multicast_sd);
 sm->multicast_sd = -1;

 sm->started = 0;
}
