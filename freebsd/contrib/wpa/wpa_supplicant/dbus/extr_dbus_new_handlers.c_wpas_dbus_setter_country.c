
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; int * drv_priv; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef int dbus_bool_t ;
struct TYPE_2__ {char* country; } ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_ERROR_FAILED ;
 int DBUS_TYPE_STRING ;
 int FALSE ;
 int MSG_DEBUG ;
 int TRUE ;
 int dbus_set_error_const (int *,int ,char*) ;
 scalar_t__ wpa_drv_set_country (struct wpa_supplicant*,char const*) ;
 int wpa_printf (int ,char*) ;
 int wpas_dbus_simple_property_setter (int *,int *,int ,char const**) ;

dbus_bool_t wpas_dbus_setter_country(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpa_supplicant *wpa_s = user_data;
 const char *country;

 if (!wpas_dbus_simple_property_setter(iter, error, DBUS_TYPE_STRING,
           &country))
  return FALSE;

 if (!country[0] || !country[1]) {
  dbus_set_error_const(error, DBUS_ERROR_FAILED,
         "invalid country code");
  return FALSE;
 }

 if (wpa_s->drv_priv != ((void*)0) && wpa_drv_set_country(wpa_s, country)) {
  wpa_printf(MSG_DEBUG, "Failed to set country");
  dbus_set_error_const(error, DBUS_ERROR_FAILED,
         "failed to set country code");
  return FALSE;
 }

 wpa_s->conf->country[0] = country[0];
 wpa_s->conf->country[1] = country[1];
 return TRUE;
}
