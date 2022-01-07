
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* global; scalar_t__ p2p_mgmt; } ;
struct wpa_ssid {int p2p_group; } ;
struct TYPE_2__ {struct wpa_supplicant* p2p_group_formation; } ;


 int wpas_dbus_register_network (struct wpa_supplicant*,struct wpa_ssid*) ;

void wpas_notify_network_added(struct wpa_supplicant *wpa_s,
          struct wpa_ssid *ssid)
{
 if (wpa_s->p2p_mgmt)
  return;







 if (!ssid->p2p_group && wpa_s->global->p2p_group_formation != wpa_s)
  wpas_dbus_register_network(wpa_s, ssid);
}
