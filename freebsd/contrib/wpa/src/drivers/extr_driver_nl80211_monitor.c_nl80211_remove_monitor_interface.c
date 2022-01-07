
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_nl80211_data {scalar_t__ monitor_refcount; int monitor_ifidx; int monitor_sock; } ;


 int MSG_DEBUG ;
 int close (int) ;
 int eloop_unregister_read_sock (int) ;
 int nl80211_remove_iface (struct wpa_driver_nl80211_data*,int) ;
 int wpa_printf (int ,char*,scalar_t__) ;

void nl80211_remove_monitor_interface(struct wpa_driver_nl80211_data *drv)
{
 if (drv->monitor_refcount > 0)
  drv->monitor_refcount--;
 wpa_printf(MSG_DEBUG, "nl80211: Remove monitor interface: refcount=%d",
     drv->monitor_refcount);
 if (drv->monitor_refcount > 0)
  return;

 if (drv->monitor_ifidx >= 0) {
  nl80211_remove_iface(drv, drv->monitor_ifidx);
  drv->monitor_ifidx = -1;
 }
 if (drv->monitor_sock >= 0) {
  eloop_unregister_read_sock(drv->monitor_sock);
  close(drv->monitor_sock);
  drv->monitor_sock = -1;
 }
}
