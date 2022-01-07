
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_global {int dummy; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef scalar_t__ dbus_bool_t ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_TYPE_BOOLEAN ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int wpa_debug_level ;
 int wpa_debug_timestamp ;
 int wpa_supplicant_set_debug_params (struct wpa_global*,int ,int ,int) ;
 int wpas_dbus_simple_property_setter (int *,int *,int ,scalar_t__*) ;

dbus_bool_t wpas_dbus_setter_debug_show_keys(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpa_global *global = user_data;
 dbus_bool_t val;

 if (!wpas_dbus_simple_property_setter(iter, error, DBUS_TYPE_BOOLEAN,
           &val))
  return FALSE;

 wpa_supplicant_set_debug_params(global, wpa_debug_level,
     wpa_debug_timestamp,
     val ? 1 : 0);
 return TRUE;
}
