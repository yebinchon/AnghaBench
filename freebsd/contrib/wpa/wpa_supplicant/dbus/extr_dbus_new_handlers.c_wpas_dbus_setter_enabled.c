
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct wpa_ssid {int dummy; } ;
struct wpa_dbus_property_desc {int dummy; } ;
struct network_handler_args {struct wpa_ssid* ssid; struct wpa_supplicant* wpa_s; } ;
typedef scalar_t__ dbus_bool_t ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_TYPE_BOOLEAN ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int wpa_supplicant_disable_network (struct wpa_supplicant*,struct wpa_ssid*) ;
 int wpa_supplicant_enable_network (struct wpa_supplicant*,struct wpa_ssid*) ;
 int wpas_dbus_simple_property_setter (int *,int *,int ,scalar_t__*) ;

dbus_bool_t wpas_dbus_setter_enabled(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct network_handler_args *net = user_data;
 struct wpa_supplicant *wpa_s;
 struct wpa_ssid *ssid;
 dbus_bool_t enable;

 if (!wpas_dbus_simple_property_setter(iter, error, DBUS_TYPE_BOOLEAN,
           &enable))
  return FALSE;

 wpa_s = net->wpa_s;
 ssid = net->ssid;

 if (enable)
  wpa_supplicant_enable_network(wpa_s, ssid);
 else
  wpa_supplicant_disable_network(wpa_s, ssid);

 return TRUE;
}
