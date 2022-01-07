
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef int dbus_uint32_t ;
typedef int dbus_bool_t ;
struct TYPE_2__ {int ap_scan; } ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_TYPE_UINT32 ;
 int wpas_dbus_simple_property_getter (int *,int ,int *,int *) ;

dbus_bool_t wpas_dbus_getter_ap_scan(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpa_supplicant *wpa_s = user_data;
 dbus_uint32_t ap_scan = wpa_s->conf->ap_scan;

 return wpas_dbus_simple_property_getter(iter, DBUS_TYPE_UINT32,
      &ap_scan, error);
}
