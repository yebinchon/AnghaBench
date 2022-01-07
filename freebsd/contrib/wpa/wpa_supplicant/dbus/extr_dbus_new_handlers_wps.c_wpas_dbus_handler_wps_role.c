
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_start_params {int role; } ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;


 scalar_t__ DBUS_TYPE_STRING ;
 int MSG_DEBUG ;
 scalar_t__ dbus_message_iter_get_arg_type (int *) ;
 int dbus_message_iter_get_basic (int *,char**) ;
 int dbus_message_iter_recurse (int *,int *) ;
 scalar_t__ os_strcmp (char*,char*) ;
 int wpa_printf (int ,char*,...) ;
 int * wpas_dbus_error_invalid_args (int *,char*) ;

__attribute__((used)) static int wpas_dbus_handler_wps_role(DBusMessage *message,
          DBusMessageIter *entry_iter,
          struct wps_start_params *params,
          DBusMessage **reply)
{
 DBusMessageIter variant_iter;
 char *val;

 dbus_message_iter_recurse(entry_iter, &variant_iter);
 if (dbus_message_iter_get_arg_type(&variant_iter) !=
     DBUS_TYPE_STRING) {
  wpa_printf(MSG_DEBUG,
      "dbus: WPS.Start - Wrong Role type, string required");
  *reply = wpas_dbus_error_invalid_args(message,
            "Role must be a string");
  return -1;
 }
 dbus_message_iter_get_basic(&variant_iter, &val);
 if (os_strcmp(val, "enrollee") == 0)
  params->role = 1;
 else if (os_strcmp(val, "registrar") == 0)
  params->role = 2;
 else {
  wpa_printf(MSG_DEBUG, "dbus: WPS.Start - Unknown role %s", val);
  *reply = wpas_dbus_error_invalid_args(message, val);
  return -1;
 }
 return 0;
}
