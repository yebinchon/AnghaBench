
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef int dbus_bool_t ;
struct TYPE_2__ {int config_methods; } ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int wpas_dbus_string_property_getter (int *,int ,int *) ;

dbus_bool_t wpas_dbus_getter_config_methods(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpa_supplicant *wpa_s = user_data;

 return wpas_dbus_string_property_getter(iter,
      wpa_s->conf->config_methods,
      error);
}
