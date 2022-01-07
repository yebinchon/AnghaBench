
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
typedef int DBusMessage ;


 int * wpas_dbus_error_unknown_error (int *,char*) ;
 scalar_t__ wpas_wps_cancel (struct wpa_supplicant*) ;

DBusMessage * wpas_dbus_handler_wps_cancel(DBusMessage *message,
        struct wpa_supplicant *wpa_s)
{
 if (wpas_wps_cancel(wpa_s))
  return wpas_dbus_error_unknown_error(message,
           "WPS cancel failed");

 return ((void*)0);
}
