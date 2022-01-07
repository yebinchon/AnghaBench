
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef int dbus_bool_t ;
struct TYPE_2__ {char* country; } ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_TYPE_STRING ;
 int wpas_dbus_simple_property_getter (int *,int ,char**,int *) ;

dbus_bool_t wpas_dbus_getter_country(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpa_supplicant *wpa_s = user_data;
 char country[3];
 char *str = country;

 country[0] = wpa_s->conf->country[0];
 country[1] = wpa_s->conf->country[1];
 country[2] = '\0';

 return wpas_dbus_simple_property_getter(iter, DBUS_TYPE_STRING,
      &str, error);
}
