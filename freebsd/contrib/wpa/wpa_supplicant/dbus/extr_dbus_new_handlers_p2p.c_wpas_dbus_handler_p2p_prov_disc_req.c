
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
 int WPAS_P2P_PD_FOR_GO_NEG ;
 int dbus_message_iter_get_basic (int *,char**) ;
 int dbus_message_iter_init (int *,int *) ;
 int dbus_message_iter_next (int *) ;
 scalar_t__ os_strcmp (char*,char*) ;
 scalar_t__ parse_peer_object_path (char*,int *) ;
 int * wpas_dbus_error_invalid_args (int *,int *) ;
 int * wpas_dbus_error_unknown_error (int *,char*) ;
 scalar_t__ wpas_p2p_prov_disc (struct wpa_supplicant*,int *,char*,int ,int *) ;

DBusMessage * wpas_dbus_handler_p2p_prov_disc_req(DBusMessage *message,
        struct wpa_supplicant *wpa_s)
{
 DBusMessageIter iter;
 char *peer_object_path = ((void*)0);
 char *config_method = ((void*)0);
 u8 peer_addr[ETH_ALEN];

 dbus_message_iter_init(message, &iter);
 dbus_message_iter_get_basic(&iter, &peer_object_path);

 if (parse_peer_object_path(peer_object_path, peer_addr) < 0)
  return wpas_dbus_error_invalid_args(message, ((void*)0));

 dbus_message_iter_next(&iter);
 dbus_message_iter_get_basic(&iter, &config_method);






 if (os_strcmp(config_method, "display") &&
     os_strcmp(config_method, "keypad") &&
     os_strcmp(config_method, "pbc") &&
     os_strcmp(config_method, "pushbutton"))
  return wpas_dbus_error_invalid_args(message, ((void*)0));

 wpa_s = wpa_s->global->p2p_init_wpa_s;

 if (wpas_p2p_prov_disc(wpa_s, peer_addr, config_method,
          WPAS_P2P_PD_FOR_GO_NEG, ((void*)0)) < 0)
  return wpas_dbus_error_unknown_error(message,
    "Failed to send provision discovery request");

 return ((void*)0);
}
