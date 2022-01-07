
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int bss_tm_status; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef int dbus_uint32_t ;
typedef int dbus_bool_t ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_TYPE_UINT32 ;
 int wpas_dbus_simple_property_getter (int *,int ,int *,int *) ;

dbus_bool_t wpas_dbus_getter_bss_tm_status(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{




 dbus_uint32_t bss_tm_status = 0;


 return wpas_dbus_simple_property_getter(iter, DBUS_TYPE_UINT32,
      &bss_tm_status, error);
}
