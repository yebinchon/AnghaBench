
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ p2p_mgmt; } ;


 int WPAS_DBUS_BSS_PROP_PRIVACY ;
 int wpas_dbus_bss_signal_prop_changed (struct wpa_supplicant*,int ,unsigned int) ;

void wpas_notify_bss_privacy_changed(struct wpa_supplicant *wpa_s,
         unsigned int id)
{
 if (wpa_s->p2p_mgmt)
  return;

 wpas_dbus_bss_signal_prop_changed(wpa_s, WPAS_DBUS_BSS_PROP_PRIVACY,
       id);
}
