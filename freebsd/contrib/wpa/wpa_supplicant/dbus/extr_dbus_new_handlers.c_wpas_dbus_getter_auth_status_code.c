
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int auth_status_code; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef int dbus_int32_t ;
typedef int dbus_bool_t ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_TYPE_INT32 ;
 int wpas_dbus_simple_property_getter (int *,int ,int *,int *) ;

dbus_bool_t wpas_dbus_getter_auth_status_code(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpa_supplicant *wpa_s = user_data;
 dbus_int32_t reason = wpa_s->auth_status_code;

 return wpas_dbus_simple_property_getter(iter, DBUS_TYPE_INT32,
      &reason, error);
}
