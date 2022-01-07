
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_iface {int wait_channel_update; } ;


 int MSG_DEBUG ;
 int REGDOM_SET_BY_USER ;
 int channel_list_update_timeout ;
 int eloop_cancel_timeout (int ,struct hostapd_iface*,int *) ;
 int setup_interface2 (struct hostapd_iface*) ;
 int wpa_printf (int ,char*) ;

void hostapd_channel_list_updated(struct hostapd_iface *iface, int initiator)
{
 if (!iface->wait_channel_update || initiator != REGDOM_SET_BY_USER)
  return;

 wpa_printf(MSG_DEBUG, "Channel list updated - continue setup");
 eloop_cancel_timeout(channel_list_update_timeout, iface, ((void*)0));
 setup_interface2(iface);
}
