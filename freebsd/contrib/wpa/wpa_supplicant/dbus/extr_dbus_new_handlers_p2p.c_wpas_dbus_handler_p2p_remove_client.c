
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct wpa_dbus_dict_entry {scalar_t__ type; int str_value; int key; } ;
struct TYPE_2__ {int p2p; } ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;


 scalar_t__ DBUS_TYPE_OBJECT_PATH ;
 scalar_t__ DBUS_TYPE_STRING ;
 int ETH_ALEN ;
 int dbus_message_iter_init (int *,int *) ;
 scalar_t__ hwaddr_aton (char*,int *) ;
 int os_free (char*) ;
 scalar_t__ os_strcmp (int ,char*) ;
 char* os_strdup (int ) ;
 int p2p_peer_known (int ,int *) ;
 scalar_t__ parse_peer_object_path (char*,int *) ;
 int wpa_dbus_dict_entry_clear (struct wpa_dbus_dict_entry*) ;
 int wpa_dbus_dict_get_entry (int *,struct wpa_dbus_dict_entry*) ;
 scalar_t__ wpa_dbus_dict_has_dict_entry (int *) ;
 int wpa_dbus_dict_open_read (int *,int *,int *) ;
 int wpa_dbus_p2p_check_enabled (struct wpa_supplicant*,int *,int **,int *) ;
 int * wpas_dbus_error_invalid_args (int *,char*) ;
 int wpas_p2p_remove_client (struct wpa_supplicant*,int *,int ) ;

DBusMessage * wpas_dbus_handler_p2p_remove_client(DBusMessage *message,
        struct wpa_supplicant *wpa_s)
{
 DBusMessageIter iter_dict;
 DBusMessage *reply = ((void*)0);
 DBusMessageIter iter;
 struct wpa_dbus_dict_entry entry;
 char *peer_object_path = ((void*)0);
 char *interface_addr = ((void*)0);
 u8 peer_addr[ETH_ALEN];

 if (!wpa_dbus_p2p_check_enabled(wpa_s, message, &reply, ((void*)0)))
  return reply;

 dbus_message_iter_init(message, &iter);

 if (!wpa_dbus_dict_open_read(&iter, &iter_dict, ((void*)0)))
  goto err;

 while (wpa_dbus_dict_has_dict_entry(&iter_dict)) {
  if (!wpa_dbus_dict_get_entry(&iter_dict, &entry))
   goto err;

  if (os_strcmp(entry.key, "peer") == 0 &&
      entry.type == DBUS_TYPE_OBJECT_PATH) {
   os_free(peer_object_path);
   peer_object_path = os_strdup(entry.str_value);
   wpa_dbus_dict_entry_clear(&entry);
  } else if (os_strcmp(entry.key, "iface") == 0 &&
      entry.type == DBUS_TYPE_STRING) {
   os_free(interface_addr);
   interface_addr = os_strdup(entry.str_value);
   wpa_dbus_dict_entry_clear(&entry);
  } else {
   wpa_dbus_dict_entry_clear(&entry);
   goto err;
  }
 }

 if ((!peer_object_path && !interface_addr) ||
     (peer_object_path &&
      (parse_peer_object_path(peer_object_path, peer_addr) < 0 ||
       !p2p_peer_known(wpa_s->global->p2p, peer_addr))) ||
     (interface_addr && hwaddr_aton(interface_addr, peer_addr) < 0))
  goto err;

 wpas_p2p_remove_client(wpa_s, peer_addr, interface_addr != ((void*)0));
 reply = ((void*)0);
out:
 os_free(peer_object_path);
 os_free(interface_addr);
 return reply;
err:
 reply = wpas_dbus_error_invalid_args(message, "Invalid address format");
 goto out;
}
