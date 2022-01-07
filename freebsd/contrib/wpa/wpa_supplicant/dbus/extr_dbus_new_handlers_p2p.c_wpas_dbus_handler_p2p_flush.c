
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* global; scalar_t__ force_long_sd; int p2p_auth_invite; } ;
struct TYPE_2__ {int p2p; struct wpa_supplicant* p2p_init_wpa_s; } ;
typedef int DBusMessage ;


 int ETH_ALEN ;
 int os_memset (int ,int ,int ) ;
 int p2p_flush (int ) ;
 int wpa_dbus_p2p_check_enabled (struct wpa_supplicant*,int *,int **,int *) ;
 int wpas_p2p_stop_find (struct wpa_supplicant*) ;

DBusMessage * wpas_dbus_handler_p2p_flush(DBusMessage *message,
       struct wpa_supplicant *wpa_s)
{
 DBusMessage *reply = ((void*)0);

 if (!wpa_dbus_p2p_check_enabled(wpa_s, message, &reply, ((void*)0)))
  return reply;

 wpa_s = wpa_s->global->p2p_init_wpa_s;

 wpas_p2p_stop_find(wpa_s);
 os_memset(wpa_s->p2p_auth_invite, 0, ETH_ALEN);
 wpa_s->force_long_sd = 0;
 p2p_flush(wpa_s->global->p2p);

 return ((void*)0);
}
