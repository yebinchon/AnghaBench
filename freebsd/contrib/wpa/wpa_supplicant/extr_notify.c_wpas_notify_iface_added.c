
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ p2p_mgmt; } ;


 scalar_t__ wpas_dbus_register_interface (struct wpa_supplicant*) ;

int wpas_notify_iface_added(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->p2p_mgmt)
  return 0;

 if (wpas_dbus_register_interface(wpa_s))
  return -1;

 return 0;
}
