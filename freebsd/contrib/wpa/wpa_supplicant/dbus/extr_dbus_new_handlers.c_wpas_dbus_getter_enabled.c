
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_dbus_property_desc {int dummy; } ;
struct network_handler_args {TYPE_1__* ssid; } ;
typedef int dbus_bool_t ;
struct TYPE_2__ {scalar_t__ disabled; } ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_TYPE_BOOLEAN ;
 int FALSE ;
 int TRUE ;
 int wpas_dbus_simple_property_getter (int *,int ,int *,int *) ;

dbus_bool_t wpas_dbus_getter_enabled(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct network_handler_args *net = user_data;
 dbus_bool_t enabled = net->ssid->disabled ? FALSE : TRUE;

 return wpas_dbus_simple_property_getter(iter, DBUS_TYPE_BOOLEAN,
      &enabled, error);
}
