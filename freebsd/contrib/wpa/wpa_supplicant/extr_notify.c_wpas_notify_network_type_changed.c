
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct wpa_ssid {int disabled; int p2p_persistent_group; int id; } ;


 int wpas_dbus_register_network (struct wpa_supplicant*,struct wpa_ssid*) ;
 int wpas_dbus_register_persistent_group (struct wpa_supplicant*,struct wpa_ssid*) ;
 int wpas_dbus_unregister_network (struct wpa_supplicant*,int ) ;
 int wpas_dbus_unregister_persistent_group (struct wpa_supplicant*,int ) ;

void wpas_notify_network_type_changed(struct wpa_supplicant *wpa_s,
          struct wpa_ssid *ssid)
{
}
