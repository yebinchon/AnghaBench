
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int conf; } ;
struct wpa_dbus_property_desc {int data; int dbus_property; } ;
typedef int dbus_bool_t ;
typedef int buf ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_ERROR_INVALID_ARGS ;
 int DBUS_TYPE_STRING ;
 int FALSE ;
 int dbus_set_error (int *,int ,char*,int ) ;
 int wpa_config_get_value (int ,int ,char*,int) ;
 int wpas_dbus_simple_property_getter (int *,int ,char**,int *) ;

dbus_bool_t wpas_dbus_getter_iface_global(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpa_supplicant *wpa_s = user_data;
 int ret;
 char buf[250];
 char *p = buf;

 if (!property_desc->data) {
  dbus_set_error(error, DBUS_ERROR_INVALID_ARGS,
          "Unhandled interface property %s",
          property_desc->dbus_property);
  return FALSE;
 }

 ret = wpa_config_get_value(property_desc->data, wpa_s->conf, buf,
       sizeof(buf));
 if (ret < 0)
  *p = '\0';

 return wpas_dbus_simple_property_getter(iter, DBUS_TYPE_STRING, &p,
      error);
}
