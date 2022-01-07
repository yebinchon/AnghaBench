
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef int dbus_bool_t ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_TYPE_STRING ;


 int wpas_dbus_simple_property_getter (int *,int ,char**,int *) ;
 int wpas_get_p2p_role (struct wpa_supplicant*) ;

dbus_bool_t wpas_dbus_getter_p2p_role(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpa_supplicant *wpa_s = user_data;
 char *str;

 switch (wpas_get_p2p_role(wpa_s)) {
 case 128:
  str = "GO";
  break;
 case 129:
  str = "client";
  break;
 default:
  str = "device";
  break;
 }

 return wpas_dbus_simple_property_getter(iter, DBUS_TYPE_STRING, &str,
      error);
}
