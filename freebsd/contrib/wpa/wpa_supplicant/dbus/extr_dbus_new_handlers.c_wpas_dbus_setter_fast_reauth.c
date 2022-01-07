
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef int dbus_bool_t ;
struct TYPE_2__ {int fast_reauth; } ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_TYPE_BOOLEAN ;
 int FALSE ;
 int TRUE ;
 int wpas_dbus_simple_property_setter (int *,int *,int ,int *) ;

dbus_bool_t wpas_dbus_setter_fast_reauth(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpa_supplicant *wpa_s = user_data;
 dbus_bool_t fast_reauth;

 if (!wpas_dbus_simple_property_setter(iter, error, DBUS_TYPE_BOOLEAN,
           &fast_reauth))
  return FALSE;

 wpa_s->conf->fast_reauth = fast_reauth;
 return TRUE;
}
