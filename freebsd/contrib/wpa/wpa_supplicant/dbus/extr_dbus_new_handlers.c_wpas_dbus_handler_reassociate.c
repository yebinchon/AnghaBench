
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ wpa_state; } ;
typedef int DBusMessage ;


 int WPAS_DBUS_ERROR_IFACE_DISABLED ;
 scalar_t__ WPA_INTERFACE_DISABLED ;
 int * dbus_message_new_error (int *,int ,char*) ;
 int wpas_request_connection (struct wpa_supplicant*) ;

DBusMessage * wpas_dbus_handler_reassociate(DBusMessage *message,
         struct wpa_supplicant *wpa_s)
{
 if (wpa_s->wpa_state != WPA_INTERFACE_DISABLED) {
  wpas_request_connection(wpa_s);
  return ((void*)0);
 }

 return dbus_message_new_error(message, WPAS_DBUS_ERROR_IFACE_DISABLED,
          "This interface is disabled");
}
