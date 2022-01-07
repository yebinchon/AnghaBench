
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct wpa_supplicant {int dummy; } ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;


 int dbus_message_iter_get_basic (int *,scalar_t__*) ;
 int dbus_message_iter_init (int *,int *) ;
 int * wpas_dbus_error_invalid_args (int *,int *) ;
 scalar_t__ wpas_p2p_sd_cancel_request (struct wpa_supplicant*,scalar_t__) ;

DBusMessage * wpas_dbus_handler_p2p_service_sd_cancel_req(
 DBusMessage *message, struct wpa_supplicant *wpa_s)
{
 DBusMessageIter iter;
 u64 req = 0;

 dbus_message_iter_init(message, &iter);
 dbus_message_iter_get_basic(&iter, &req);

 if (req == 0)
  goto error;

 if (wpas_p2p_sd_cancel_request(wpa_s, req) < 0)
  goto error;

 return ((void*)0);
error:
 return wpas_dbus_error_invalid_args(message, ((void*)0));
}
