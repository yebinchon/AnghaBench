
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct wpa_dbus_dict_entry {scalar_t__ type; int uint32_value; scalar_t__ array_type; int array_len; int bytearray_value; int key; int str_value; } ;
struct TYPE_2__ {int p2p; } ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;


 scalar_t__ DBUS_TYPE_ARRAY ;
 scalar_t__ DBUS_TYPE_BYTE ;
 scalar_t__ DBUS_TYPE_INT32 ;
 scalar_t__ DBUS_TYPE_OBJECT_PATH ;
 scalar_t__ DBUS_TYPE_UINT32 ;
 int ETH_ALEN ;
 int dbus_message_iter_init (int *,int *) ;
 int os_free (char*) ;
 scalar_t__ os_strcmp (int ,char*) ;
 char* os_strdup (int ) ;
 int p2p_peer_known (int ,int *) ;
 scalar_t__ parse_peer_object_path (char*,int *) ;
 int wpa_dbus_dict_entry_clear (struct wpa_dbus_dict_entry*) ;
 int wpa_dbus_dict_get_entry (int *,struct wpa_dbus_dict_entry*) ;
 scalar_t__ wpa_dbus_dict_has_dict_entry (int *) ;
 int wpa_dbus_dict_open_read (int *,int *,int *) ;
 struct wpabuf* wpabuf_alloc_copy (int ,int ) ;
 int wpabuf_free (struct wpabuf*) ;
 int * wpas_dbus_error_invalid_args (int *,int *) ;
 int wpas_p2p_sd_response (struct wpa_supplicant*,int,int *,int ,struct wpabuf*) ;

DBusMessage * wpas_dbus_handler_p2p_service_sd_res(
 DBusMessage *message, struct wpa_supplicant *wpa_s)
{
 DBusMessageIter iter_dict;
 DBusMessage *reply = ((void*)0);
 DBusMessageIter iter;
 struct wpa_dbus_dict_entry entry;
 char *peer_object_path = ((void*)0);
 struct wpabuf *tlv = ((void*)0);
 int freq = 0;
 int dlg_tok = 0;
 u8 addr[ETH_ALEN];

 dbus_message_iter_init(message, &iter);

 if (!wpa_dbus_dict_open_read(&iter, &iter_dict, ((void*)0)))
  goto error;

 while (wpa_dbus_dict_has_dict_entry(&iter_dict)) {
  if (!wpa_dbus_dict_get_entry(&iter_dict, &entry))
   goto error;

  if (os_strcmp(entry.key, "peer_object") == 0 &&
      entry.type == DBUS_TYPE_OBJECT_PATH) {
   peer_object_path = os_strdup(entry.str_value);
  } else if (os_strcmp(entry.key, "frequency") == 0 &&
      entry.type == DBUS_TYPE_INT32) {
   freq = entry.uint32_value;
  } else if (os_strcmp(entry.key, "dialog_token") == 0 &&
      (entry.type == DBUS_TYPE_UINT32 ||
       entry.type == DBUS_TYPE_INT32)) {
   dlg_tok = entry.uint32_value;
  } else if (os_strcmp(entry.key, "tlvs") == 0) {
   if (entry.type != DBUS_TYPE_ARRAY ||
       entry.array_type != DBUS_TYPE_BYTE)
    goto error_clear;
   tlv = wpabuf_alloc_copy(entry.bytearray_value,
      entry.array_len);
  } else
   goto error_clear;

  wpa_dbus_dict_entry_clear(&entry);
 }
 if (parse_peer_object_path(peer_object_path, addr) < 0 ||
     !p2p_peer_known(wpa_s->global->p2p, addr) ||
     tlv == ((void*)0))
  goto error;

 wpas_p2p_sd_response(wpa_s, freq, addr, (u8) dlg_tok, tlv);
 wpabuf_free(tlv);
out:
 os_free(peer_object_path);
 return reply;
error_clear:
 wpa_dbus_dict_entry_clear(&entry);
error:
 reply = wpas_dbus_error_invalid_args(message, ((void*)0));
 goto out;
}
