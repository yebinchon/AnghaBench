
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
typedef int DBusMessage ;


 int wpas_p2p_sd_service_update (struct wpa_supplicant*) ;

DBusMessage * wpas_dbus_handler_p2p_service_update(
 DBusMessage *message, struct wpa_supplicant *wpa_s)
{
 wpas_p2p_sd_service_update(wpa_s);
 return ((void*)0);
}
