
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct TYPE_2__ {struct wpa_supplicant* p2p_init_wpa_s; } ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;


 int ETH_ALEN ;
 int dbus_message_iter_get_basic (int *,char**) ;
 int dbus_message_iter_init (int *,int *) ;
 scalar_t__ parse_peer_object_path (char*,int *) ;
 int * wpas_dbus_error_invalid_args (int *,int *) ;
 int * wpas_dbus_error_unknown_error (int *,char*) ;
 scalar_t__ wpas_p2p_reject (struct wpa_supplicant*,int *) ;

DBusMessage * wpas_dbus_handler_p2p_rejectpeer(DBusMessage *message,
            struct wpa_supplicant *wpa_s)
{
 DBusMessageIter iter;
 char *peer_object_path = ((void*)0);
 u8 peer_addr[ETH_ALEN];

 dbus_message_iter_init(message, &iter);
 dbus_message_iter_get_basic(&iter, &peer_object_path);

 if (parse_peer_object_path(peer_object_path, peer_addr) < 0)
  return wpas_dbus_error_invalid_args(message, ((void*)0));

 wpa_s = wpa_s->global->p2p_init_wpa_s;

 if (wpas_p2p_reject(wpa_s, peer_addr) < 0)
  return wpas_dbus_error_unknown_error(message,
    "Failed to call wpas_p2p_reject method.");

 return ((void*)0);
}
