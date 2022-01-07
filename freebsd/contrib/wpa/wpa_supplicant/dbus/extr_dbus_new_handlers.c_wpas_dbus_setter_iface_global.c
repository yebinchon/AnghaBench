
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int conf; } ;
struct wpa_dbus_property_desc {char const* data; int dbus_property; } ;
typedef int dbus_bool_t ;
typedef int buf ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_ERROR_INVALID_ARGS ;
 int DBUS_TYPE_STRING ;
 int FALSE ;
 int TRUE ;
 int WPAS_DBUS_ERROR_UNKNOWN_ERROR ;
 int dbus_set_error (int *,int ,char*,int ) ;
 int os_snprintf (char*,size_t,char*,char const*,char const*) ;
 scalar_t__ os_snprintf_error (size_t,int) ;
 int os_strlen (char const*) ;
 scalar_t__ wpa_config_process_global (int ,char*,int) ;
 int wpa_supplicant_update_config (struct wpa_supplicant*) ;
 int wpas_dbus_simple_property_setter (int *,int *,int ,char const**) ;

dbus_bool_t wpas_dbus_setter_iface_global(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpa_supplicant *wpa_s = user_data;
 const char *new_value = ((void*)0);
 char buf[250];
 size_t combined_len;
 int ret;

 if (!wpas_dbus_simple_property_setter(iter, error, DBUS_TYPE_STRING,
           &new_value))
  return FALSE;

 combined_len = os_strlen(property_desc->data) + os_strlen(new_value) +
  3;
 if (combined_len >= sizeof(buf)) {
  dbus_set_error(error, DBUS_ERROR_INVALID_ARGS,
          "Interface property %s value too large",
          property_desc->dbus_property);
  return FALSE;
 }

 if (!new_value[0])
  new_value = "NULL";

 ret = os_snprintf(buf, combined_len, "%s=%s", property_desc->data,
     new_value);
 if (os_snprintf_error(combined_len, ret)) {
  dbus_set_error(error, WPAS_DBUS_ERROR_UNKNOWN_ERROR,
          "Failed to construct new interface property %s",
          property_desc->dbus_property);
  return FALSE;
 }

 if (wpa_config_process_global(wpa_s->conf, buf, -1)) {
  dbus_set_error(error, DBUS_ERROR_INVALID_ARGS,
          "Failed to set interface property %s",
          property_desc->dbus_property);
  return FALSE;
 }

 wpa_supplicant_update_config(wpa_s);
 return TRUE;
}
