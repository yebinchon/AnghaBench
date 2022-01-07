
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int dummy; } ;
struct wpa_dbus_property_desc {int dummy; } ;
struct network_handler_args {int wpa_s; struct wpa_ssid* ssid; } ;
typedef int dbus_bool_t ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int dbus_message_iter_recurse (int *,int *) ;
 int set_network_properties (int ,struct wpa_ssid*,int *,int *) ;

dbus_bool_t wpas_dbus_setter_persistent_group_properties(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct network_handler_args *net = user_data;
 struct wpa_ssid *ssid = net->ssid;
 DBusMessageIter variant_iter;





 dbus_message_iter_recurse(iter, &variant_iter);
 return set_network_properties(net->wpa_s, ssid, &variant_iter, error);
}
