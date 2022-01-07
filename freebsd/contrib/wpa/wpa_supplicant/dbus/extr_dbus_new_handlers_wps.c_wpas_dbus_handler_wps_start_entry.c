
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_start_params {int dummy; } ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;


 int MSG_DEBUG ;
 scalar_t__ os_strcmp (char*,char*) ;
 int wpa_printf (int ,char*,char*) ;
 int * wpas_dbus_error_invalid_args (int *,char*) ;
 int wpas_dbus_handler_wps_bssid (int *,int *,struct wps_start_params*,int **) ;
 int wpas_dbus_handler_wps_p2p_dev_addr (int *,int *,struct wps_start_params*,int **) ;
 int wpas_dbus_handler_wps_pin (int *,int *,struct wps_start_params*,int **) ;
 int wpas_dbus_handler_wps_role (int *,int *,struct wps_start_params*,int **) ;
 int wpas_dbus_handler_wps_type (int *,int *,struct wps_start_params*,int **) ;

__attribute__((used)) static int wpas_dbus_handler_wps_start_entry(DBusMessage *message, char *key,
          DBusMessageIter *entry_iter,
          struct wps_start_params *params,
          DBusMessage **reply)
{
 if (os_strcmp(key, "Role") == 0)
  return wpas_dbus_handler_wps_role(message, entry_iter,
        params, reply);
 else if (os_strcmp(key, "Type") == 0)
  return wpas_dbus_handler_wps_type(message, entry_iter,
        params, reply);
 else if (os_strcmp(key, "Bssid") == 0)
  return wpas_dbus_handler_wps_bssid(message, entry_iter,
         params, reply);
 else if (os_strcmp(key, "Pin") == 0)
  return wpas_dbus_handler_wps_pin(message, entry_iter,
       params, reply);






 wpa_printf(MSG_DEBUG, "dbus: WPS.Start - unknown key %s", key);
 *reply = wpas_dbus_error_invalid_args(message, key);
 return -1;
}
