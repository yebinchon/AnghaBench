
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_start_params {int type; int role; int bssid; int * pin; int p2p_dev_addr; } ;
struct wpa_supplicant {scalar_t__ ap_iface; } ;
typedef int params ;
typedef int npin ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;


 scalar_t__ DBUS_TYPE_DICT_ENTRY ;
 int DEV_PW_DEFAULT ;
 int MSG_DEBUG ;
 scalar_t__ dbus_message_iter_get_arg_type (int *) ;
 int dbus_message_iter_get_basic (int *,char**) ;
 int dbus_message_iter_init (int *,int *) ;
 int dbus_message_iter_init_append (int *,int *) ;
 int dbus_message_iter_next (int *) ;
 int dbus_message_iter_recurse (int *,int *) ;
 int * dbus_message_new_method_return (int *) ;
 int dbus_message_unref (int *) ;
 int os_memset (struct wps_start_params*,int ,int) ;
 int os_snprintf (char*,int,char*,int) ;
 scalar_t__ os_snprintf_error (int,int) ;
 scalar_t__ os_strlen (char*) ;
 int wpa_dbus_dict_append_string (int *,char*,char*) ;
 int wpa_dbus_dict_close_write (int *,int *) ;
 int wpa_dbus_dict_open_write (int *,int *) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_supplicant_ap_wps_pbc (struct wpa_supplicant*,int ,int ) ;
 int wpa_supplicant_ap_wps_pin (struct wpa_supplicant*,int ,int *,char*,int,int ) ;
 int * wpas_dbus_error_invalid_args (int *,char*) ;
 int * wpas_dbus_error_no_memory (int *) ;
 int * wpas_dbus_error_unknown_error (int *,char*) ;
 scalar_t__ wpas_dbus_handler_wps_start_entry (int *,char*,int *,struct wps_start_params*,int **) ;
 int wpas_wps_start_pbc (struct wpa_supplicant*,int ,int ,int ) ;
 int wpas_wps_start_pin (struct wpa_supplicant*,int ,int *,int ,int ) ;
 int wpas_wps_start_reg (struct wpa_supplicant*,int ,int *,int *) ;

DBusMessage * wpas_dbus_handler_wps_start(DBusMessage *message,
       struct wpa_supplicant *wpa_s)
{
 DBusMessage *reply = ((void*)0);
 DBusMessageIter iter, dict_iter, entry_iter;
 struct wps_start_params params;
 char *key;
 char npin[9] = { '\0' };
 int ret;

 os_memset(&params, 0, sizeof(params));
 dbus_message_iter_init(message, &iter);

 dbus_message_iter_recurse(&iter, &dict_iter);
 while (dbus_message_iter_get_arg_type(&dict_iter) ==
        DBUS_TYPE_DICT_ENTRY) {
  dbus_message_iter_recurse(&dict_iter, &entry_iter);

  dbus_message_iter_get_basic(&entry_iter, &key);
  dbus_message_iter_next(&entry_iter);

  if (wpas_dbus_handler_wps_start_entry(message, key,
            &entry_iter,
            &params, &reply))
   return reply;

  dbus_message_iter_next(&dict_iter);
 }
 if (params.role == 0) {
  wpa_printf(MSG_DEBUG, "dbus: WPS.Start - Role not specified");
  return wpas_dbus_error_invalid_args(message,
          "Role not specified");
 } else if (params.role == 2) {
  if (params.pin == ((void*)0)) {
   wpa_printf(MSG_DEBUG,
       "dbus: WPS.Start - Pin required for registrar role");
   return wpas_dbus_error_invalid_args(
    message, "Pin required for registrar role.");
  }
  ret = wpas_wps_start_reg(wpa_s, params.bssid, params.pin,
      ((void*)0));
 } else if (params.type == 0) {
  wpa_printf(MSG_DEBUG, "dbus: WPS.Start - Type not specified");
  return wpas_dbus_error_invalid_args(message,
          "Type not specified");
 } else if (params.type == 1) {
  ret = wpas_wps_start_pin(wpa_s, params.bssid,
      params.pin, 0,
      DEV_PW_DEFAULT);
  if (ret > 0) {
   ret = os_snprintf(npin, sizeof(npin), "%08d", ret);
   if (os_snprintf_error(sizeof(npin), ret))
    return wpas_dbus_error_unknown_error(
     message, "invalid PIN");
  }
 } else {
  ret = wpas_wps_start_pbc(wpa_s, params.bssid, 0, 0);
 }

 if (ret < 0) {
  wpa_printf(MSG_DEBUG,
      "dbus: WPS.Start wpas_wps_failed in role %s and key %s",
      (params.role == 1 ? "enrollee" : "registrar"),
      (params.type == 0 ? "" :
       (params.type == 1 ? "pin" : "pbc")));
  return wpas_dbus_error_unknown_error(message,
           "WPS start failed");
 }

 reply = dbus_message_new_method_return(message);
 if (!reply)
  return wpas_dbus_error_no_memory(message);

 dbus_message_iter_init_append(reply, &iter);
 if (!wpa_dbus_dict_open_write(&iter, &dict_iter) ||
     (os_strlen(npin) > 0 &&
      !wpa_dbus_dict_append_string(&dict_iter, "Pin", npin)) ||
     !wpa_dbus_dict_close_write(&iter, &dict_iter)) {
  dbus_message_unref(reply);
  return wpas_dbus_error_no_memory(message);
 }

 return reply;
}
