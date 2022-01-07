
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ p2p_mgmt; } ;
struct wpa_ssid {int id; } ;


 int wpas_dbus_signal_network_selected (struct wpa_supplicant*,int ) ;

void wpas_notify_network_selected(struct wpa_supplicant *wpa_s,
      struct wpa_ssid *ssid)
{
 if (wpa_s->p2p_mgmt)
  return;

 wpas_dbus_signal_network_selected(wpa_s, ssid->id);
}
