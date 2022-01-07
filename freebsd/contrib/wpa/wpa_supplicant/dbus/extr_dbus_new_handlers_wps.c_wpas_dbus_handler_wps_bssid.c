
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_start_params {int bssid; } ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;


 scalar_t__ DBUS_TYPE_ARRAY ;
 scalar_t__ DBUS_TYPE_BYTE ;
 int ETH_ALEN ;
 int MSG_DEBUG ;
 scalar_t__ dbus_message_iter_get_arg_type (int *) ;
 scalar_t__ dbus_message_iter_get_element_type (int *) ;
 int dbus_message_iter_get_fixed_array (int *,int *,int*) ;
 int dbus_message_iter_recurse (int *,int *) ;
 int wpa_printf (int ,char*,...) ;
 int * wpas_dbus_error_invalid_args (int *,char*) ;

__attribute__((used)) static int wpas_dbus_handler_wps_bssid(DBusMessage *message,
           DBusMessageIter *entry_iter,
           struct wps_start_params *params,
           DBusMessage **reply)
{
 DBusMessageIter variant_iter, array_iter;
 int len;

 dbus_message_iter_recurse(entry_iter, &variant_iter);
 if (dbus_message_iter_get_arg_type(&variant_iter) != DBUS_TYPE_ARRAY ||
     dbus_message_iter_get_element_type(&variant_iter) !=
     DBUS_TYPE_BYTE) {
  wpa_printf(MSG_DEBUG,
      "dbus: WPS.Start - Wrong Bssid type, byte array required");
  *reply = wpas_dbus_error_invalid_args(
   message, "Bssid must be a byte array");
  return -1;
 }
 dbus_message_iter_recurse(&variant_iter, &array_iter);
 dbus_message_iter_get_fixed_array(&array_iter, &params->bssid, &len);
 if (len != ETH_ALEN) {
  wpa_printf(MSG_DEBUG, "dbus: WPS.Start - Wrong Bssid length %d",
      len);
  *reply = wpas_dbus_error_invalid_args(message,
            "Bssid is wrong length");
  return -1;
 }
 return 0;
}
