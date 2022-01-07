
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* global; } ;
struct TYPE_2__ {int p2p_init_wpa_s; } ;
typedef int DBusMessage ;


 int wpas_p2p_stop_find (int ) ;

DBusMessage * wpas_dbus_handler_p2p_stop_find(DBusMessage *message,
           struct wpa_supplicant *wpa_s)
{
 wpas_p2p_stop_find(wpa_s->global->p2p_init_wpa_s);
 return ((void*)0);
}
