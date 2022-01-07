
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ p2p_mgmt; } ;


 int wpas_dbus_signal_wps_event_pbc_overlap (struct wpa_supplicant*) ;

void wpas_notify_wps_event_pbc_overlap(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->p2p_mgmt)
  return;




}
