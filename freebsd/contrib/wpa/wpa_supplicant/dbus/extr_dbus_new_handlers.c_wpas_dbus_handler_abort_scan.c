
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
typedef int DBusMessage ;


 int WPAS_DBUS_ERROR_IFACE_SCAN_ERROR ;
 int * dbus_message_new_error (int *,int ,char*) ;
 scalar_t__ wpas_abort_ongoing_scan (struct wpa_supplicant*) ;

DBusMessage * wpas_dbus_handler_abort_scan(DBusMessage *message,
        struct wpa_supplicant *wpa_s)
{
 if (wpas_abort_ongoing_scan(wpa_s) < 0)
  return dbus_message_new_error(
   message, WPAS_DBUS_ERROR_IFACE_SCAN_ERROR,
   "Abort failed or no scan in progress");

 return ((void*)0);
}
