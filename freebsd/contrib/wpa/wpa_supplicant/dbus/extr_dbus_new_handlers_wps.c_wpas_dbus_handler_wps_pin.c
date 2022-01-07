
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_start_params {int pin; } ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;


 scalar_t__ DBUS_TYPE_STRING ;
 int MSG_DEBUG ;
 scalar_t__ dbus_message_iter_get_arg_type (int *) ;
 int dbus_message_iter_get_basic (int *,int *) ;
 int dbus_message_iter_recurse (int *,int *) ;
 int wpa_printf (int ,char*) ;
 int * wpas_dbus_error_invalid_args (int *,char*) ;

__attribute__((used)) static int wpas_dbus_handler_wps_pin(DBusMessage *message,
         DBusMessageIter *entry_iter,
         struct wps_start_params *params,
         DBusMessage **reply)
{
 DBusMessageIter variant_iter;

 dbus_message_iter_recurse(entry_iter, &variant_iter);
 if (dbus_message_iter_get_arg_type(&variant_iter) != DBUS_TYPE_STRING) {
  wpa_printf(MSG_DEBUG,
      "dbus: WPS.Start - Wrong Pin type, string required");
  *reply = wpas_dbus_error_invalid_args(message,
            "Pin must be a string");
  return -1;
 }
 dbus_message_iter_get_basic(&variant_iter, &params->pin);
 return 0;
}
