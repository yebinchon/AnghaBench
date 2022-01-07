
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sec; int usec; } ;
struct wpa_supplicant {TYPE_1__ roam_time; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef int dbus_uint32_t ;
typedef int dbus_bool_t ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_TYPE_UINT32 ;
 int wpas_dbus_simple_property_getter (int *,int ,int*,int *) ;

dbus_bool_t wpas_dbus_getter_roam_time(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpa_supplicant *wpa_s = user_data;
 dbus_uint32_t roam_time = wpa_s->roam_time.sec * 1000 +
  wpa_s->roam_time.usec / 1000;

 return wpas_dbus_simple_property_getter(iter, DBUS_TYPE_UINT32,
      &roam_time, error);
}
