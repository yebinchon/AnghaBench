
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef int dbus_uint32_t ;
typedef int dbus_bool_t ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_ERROR_FAILED ;
 int DBUS_TYPE_UINT32 ;
 int FALSE ;
 int TRUE ;
 int dbus_set_error_const (int *,int ,char*) ;
 scalar_t__ wpa_supplicant_set_ap_scan (struct wpa_supplicant*,int ) ;
 int wpas_dbus_simple_property_setter (int *,int *,int ,int *) ;

dbus_bool_t wpas_dbus_setter_ap_scan(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpa_supplicant *wpa_s = user_data;
 dbus_uint32_t ap_scan;

 if (!wpas_dbus_simple_property_setter(iter, error, DBUS_TYPE_UINT32,
           &ap_scan))
  return FALSE;

 if (wpa_supplicant_set_ap_scan(wpa_s, ap_scan)) {
  dbus_set_error_const(error, DBUS_ERROR_FAILED,
         "ap_scan must be 0, 1, or 2");
  return FALSE;
 }
 return TRUE;
}
