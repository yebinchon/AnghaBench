
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int reattach; int * current_ssid; } ;
typedef int DBusMessage ;


 int WPAS_DBUS_ERROR_NOT_CONNECTED ;
 int * dbus_message_new_error (int *,int ,char*) ;
 int wpas_request_connection (struct wpa_supplicant*) ;

DBusMessage * wpas_dbus_handler_reattach(DBusMessage *message,
      struct wpa_supplicant *wpa_s)
{
 if (wpa_s->current_ssid != ((void*)0)) {
  wpa_s->reattach = 1;
  wpas_request_connection(wpa_s);
  return ((void*)0);
 }

 return dbus_message_new_error(message, WPAS_DBUS_ERROR_NOT_CONNECTED,
          "This interface is not connected");
}
