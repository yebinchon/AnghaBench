
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ p2p_mgmt; } ;
struct wpa_ssid {int dummy; } ;


 int wpas_dbus_signal_network_enabled_changed (struct wpa_supplicant*,struct wpa_ssid*) ;

void wpas_notify_network_enabled_changed(struct wpa_supplicant *wpa_s,
      struct wpa_ssid *ssid)
{
 if (wpa_s->p2p_mgmt)
  return;

 wpas_dbus_signal_network_enabled_changed(wpa_s, ssid);
}
