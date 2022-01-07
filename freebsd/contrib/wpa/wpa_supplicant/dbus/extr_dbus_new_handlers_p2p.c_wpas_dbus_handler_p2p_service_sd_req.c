
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u64 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct wpa_dbus_dict_entry {scalar_t__ type; scalar_t__ uint32_value; scalar_t__ array_type; int array_len; int bytearray_value; int key; int str_value; } ;
struct TYPE_2__ {int p2p; } ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;


 scalar_t__ DBUS_TYPE_ARRAY ;
 scalar_t__ DBUS_TYPE_BYTE ;
 scalar_t__ DBUS_TYPE_INT32 ;
 int DBUS_TYPE_INVALID ;
 scalar_t__ DBUS_TYPE_OBJECT_PATH ;
 scalar_t__ DBUS_TYPE_STRING ;
 int DBUS_TYPE_UINT64 ;
 int ETH_ALEN ;
 int dbus_message_append_args (int *,int ,scalar_t__*,int ) ;
 int dbus_message_iter_init (int *,int *) ;
 int * dbus_message_new_method_return (int *) ;
 int os_free (char*) ;
 scalar_t__ os_strcmp (int ,char*) ;
 char* os_strdup (int ) ;
 int p2p_peer_known (int ,scalar_t__*) ;
 scalar_t__ parse_peer_object_path (char*,scalar_t__*) ;
 int wpa_dbus_dict_entry_clear (struct wpa_dbus_dict_entry*) ;
 int wpa_dbus_dict_get_entry (int *,struct wpa_dbus_dict_entry*) ;
 scalar_t__ wpa_dbus_dict_has_dict_entry (int *) ;
 int wpa_dbus_dict_open_read (int *,int *,int *) ;
 struct wpabuf* wpabuf_alloc_copy (int ,int ) ;
 int wpabuf_free (struct wpabuf*) ;
 int * wpas_dbus_error_invalid_args (int *,int *) ;
 int * wpas_dbus_error_unknown_error (int *,char*) ;
 scalar_t__ wpas_p2p_sd_request (struct wpa_supplicant*,scalar_t__*,struct wpabuf*) ;
 scalar_t__ wpas_p2p_sd_request_upnp (struct wpa_supplicant*,scalar_t__*,scalar_t__,char*) ;

DBusMessage * wpas_dbus_handler_p2p_service_sd_req(
 DBusMessage *message, struct wpa_supplicant *wpa_s)
{
 DBusMessageIter iter_dict;
 DBusMessage *reply = ((void*)0);
 DBusMessageIter iter;
 struct wpa_dbus_dict_entry entry;
 int upnp = 0;
 char *service = ((void*)0);
 char *peer_object_path = ((void*)0);
 struct wpabuf *tlv = ((void*)0);
 u8 version = 0;
 u64 ref = 0;
 u8 addr_buf[ETH_ALEN], *addr;

 dbus_message_iter_init(message, &iter);

 if (!wpa_dbus_dict_open_read(&iter, &iter_dict, ((void*)0)))
  goto error;

 while (wpa_dbus_dict_has_dict_entry(&iter_dict)) {
  if (!wpa_dbus_dict_get_entry(&iter_dict, &entry))
   goto error;
  if (os_strcmp(entry.key, "peer_object") == 0 &&
      entry.type == DBUS_TYPE_OBJECT_PATH) {
   peer_object_path = os_strdup(entry.str_value);
  } else if (os_strcmp(entry.key, "service_type") == 0 &&
      entry.type == DBUS_TYPE_STRING) {
   if (os_strcmp(entry.str_value, "upnp") == 0)
    upnp = 1;
   else
    goto error_clear;
  } else if (os_strcmp(entry.key, "version") == 0 &&
      entry.type == DBUS_TYPE_INT32) {
   version = entry.uint32_value;
  } else if (os_strcmp(entry.key, "service") == 0 &&
      entry.type == DBUS_TYPE_STRING) {
   service = os_strdup(entry.str_value);
  } else if (os_strcmp(entry.key, "tlv") == 0) {
   if (entry.type != DBUS_TYPE_ARRAY ||
       entry.array_type != DBUS_TYPE_BYTE)
    goto error_clear;
   tlv = wpabuf_alloc_copy(entry.bytearray_value,
      entry.array_len);
  } else
   goto error_clear;

  wpa_dbus_dict_entry_clear(&entry);
 }

 if (!peer_object_path) {
  addr = ((void*)0);
 } else {
  if (parse_peer_object_path(peer_object_path, addr_buf) < 0 ||
      !p2p_peer_known(wpa_s->global->p2p, addr_buf))
   goto error;

  addr = addr_buf;
 }

 if (upnp == 1) {
  if (version <= 0 || service == ((void*)0))
   goto error;

  ref = wpas_p2p_sd_request_upnp(wpa_s, addr, version, service);
 } else {
  if (tlv == ((void*)0))
   goto error;
  ref = wpas_p2p_sd_request(wpa_s, addr, tlv);
  wpabuf_free(tlv);
 }

 if (ref != 0) {
  reply = dbus_message_new_method_return(message);
  dbus_message_append_args(reply, DBUS_TYPE_UINT64,
      &ref, DBUS_TYPE_INVALID);
 } else {
  reply = wpas_dbus_error_unknown_error(
   message, "Unable to send SD request");
 }
out:
 os_free(service);
 os_free(peer_object_path);
 return reply;
error_clear:
 wpa_dbus_dict_entry_clear(&entry);
error:
 if (tlv)
  wpabuf_free(tlv);
 reply = wpas_dbus_error_invalid_args(message, ((void*)0));
 goto out;
}
