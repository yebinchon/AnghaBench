
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ p2p_mgmt; } ;


 int wpas_dbus_signal_blob_added (struct wpa_supplicant*,char const*) ;

void wpas_notify_blob_added(struct wpa_supplicant *wpa_s, const char *name)
{
 if (wpa_s->p2p_mgmt)
  return;

 wpas_dbus_signal_blob_added(wpa_s, name);
}
