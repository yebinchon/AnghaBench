
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_dbus_property_desc {int dummy; } ;
struct network_handler_args {int dummy; } ;
typedef int dbus_bool_t ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int wpas_dbus_getter_network_properties (struct wpa_dbus_property_desc const*,int *,int *,struct network_handler_args*) ;

dbus_bool_t wpas_dbus_getter_persistent_group_properties(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct network_handler_args *net = user_data;




 return wpas_dbus_getter_network_properties(property_desc, iter, error, net);
}
