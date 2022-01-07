
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
typedef int DBusMessage ;


 int wpas_p2p_service_flush (struct wpa_supplicant*) ;

DBusMessage * wpas_dbus_handler_p2p_flush_service(DBusMessage *message,
        struct wpa_supplicant *wpa_s)
{
 wpas_p2p_service_flush(wpa_s);
 return ((void*)0);
}
