
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct wpa_ssid {int id; } ;


 int wpas_dbus_unregister_persistent_group (struct wpa_supplicant*,int ) ;

void wpas_notify_persistent_group_removed(struct wpa_supplicant *wpa_s,
       struct wpa_ssid *ssid)
{



}
