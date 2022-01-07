
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {int passphrase; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef int dbus_bool_t ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int FALSE ;
 int wpas_dbus_string_property_getter (int *,int ,int *) ;

dbus_bool_t wpas_dbus_getter_p2p_group_passphrase(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpa_supplicant *wpa_s = user_data;
 struct wpa_ssid *ssid = wpa_s->current_ssid;

 if (ssid == ((void*)0))
  return FALSE;

 return wpas_dbus_string_property_getter(iter, ssid->passphrase, error);
}
