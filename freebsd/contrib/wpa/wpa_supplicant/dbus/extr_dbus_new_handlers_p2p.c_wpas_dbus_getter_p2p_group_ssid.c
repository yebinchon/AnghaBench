
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* current_ssid; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef int dbus_bool_t ;
struct TYPE_2__ {int ssid_len; int ssid; } ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_TYPE_BYTE ;
 int FALSE ;
 int wpas_dbus_simple_array_property_getter (int *,int ,int ,int ,int *) ;

dbus_bool_t wpas_dbus_getter_p2p_group_ssid(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpa_supplicant *wpa_s = user_data;

 if (wpa_s->current_ssid == ((void*)0))
  return FALSE;
 return wpas_dbus_simple_array_property_getter(
  iter, DBUS_TYPE_BYTE, wpa_s->current_ssid->ssid,
  wpa_s->current_ssid->ssid_len, error);
}
