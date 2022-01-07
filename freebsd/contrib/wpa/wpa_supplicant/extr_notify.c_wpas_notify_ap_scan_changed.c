
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ p2p_mgmt; } ;


 int WPAS_DBUS_PROP_AP_SCAN ;
 int wpas_dbus_signal_prop_changed (struct wpa_supplicant*,int ) ;

void wpas_notify_ap_scan_changed(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->p2p_mgmt)
  return;

 wpas_dbus_signal_prop_changed(wpa_s, WPAS_DBUS_PROP_AP_SCAN);
}
