
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_iface {int wait_channel_update; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int setup_interface2 (struct hostapd_iface*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void channel_list_update_timeout(void *eloop_ctx, void *timeout_ctx)
{
 struct hostapd_iface *iface = eloop_ctx;

 if (!iface->wait_channel_update) {
  wpa_printf(MSG_INFO, "Channel list update timeout, but interface was not waiting for it");
  return;
 }





 wpa_printf(MSG_DEBUG, "Channel list update timeout - try to continue anyway");
 setup_interface2(iface);
}
