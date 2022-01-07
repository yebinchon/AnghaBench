
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef int dbus_bool_t ;
struct TYPE_2__ {char* device_name; int changed_parameters; } ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int CFG_CHANGED_DEVICE_NAME ;
 int DBUS_TYPE_STRING ;
 int FALSE ;
 int TRUE ;
 scalar_t__ WPS_DEV_NAME_MAX_LEN ;
 int os_free (char*) ;
 char* os_strdup (char*) ;
 scalar_t__ os_strlen (char*) ;
 int wpa_supplicant_update_config (struct wpa_supplicant*) ;
 int wpas_dbus_simple_property_setter (int *,int *,int ,char**) ;

dbus_bool_t wpas_dbus_setter_wps_device_name(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpa_supplicant *wpa_s = user_data;
 char *methods, *devname;

 if (!wpas_dbus_simple_property_setter(iter, error, DBUS_TYPE_STRING,
           &methods))
  return FALSE;

 if (os_strlen(methods) > WPS_DEV_NAME_MAX_LEN)
  return FALSE;

 devname = os_strdup(methods);
 if (!devname)
  return FALSE;

 os_free(wpa_s->conf->device_name);
 wpa_s->conf->device_name = devname;
 wpa_s->conf->changed_parameters |= CFG_CHANGED_DEVICE_NAME;
 wpa_supplicant_update_config(wpa_s);

 return TRUE;
}
