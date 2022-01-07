
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_dbus_property_desc {int dummy; } ;
typedef int dbus_bool_t ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_TYPE_STRING ;
 char** debug_strings ;
 int wpa_debug_level ;
 int wpas_dbus_simple_property_getter (int *,int ,char const**,int *) ;

dbus_bool_t wpas_dbus_getter_debug_level(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 const char *str;
 int idx = wpa_debug_level;

 if (idx < 0)
  idx = 0;
 if (idx > 5)
  idx = 5;
 str = debug_strings[idx];
 return wpas_dbus_simple_property_getter(iter, DBUS_TYPE_STRING,
      &str, error);
}
