
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct wpa_dbus_dict_entry {scalar_t__ type; unsigned int uint32_value; scalar_t__ array_type; unsigned int array_len; int * key; int * str_value; int * binarray_value; } ;
typedef enum p2p_discovery_type { ____Placeholder_p2p_discovery_type } p2p_discovery_type ;
struct TYPE_2__ {struct wpa_supplicant* p2p_init_wpa_s; } ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;


 scalar_t__ DBUS_TYPE_ARRAY ;
 scalar_t__ DBUS_TYPE_INT32 ;
 scalar_t__ DBUS_TYPE_STRING ;
 scalar_t__ DBUS_TYPE_UINT32 ;
 int P2P_FIND_ONLY_SOCIAL ;
 int P2P_FIND_PROGRESSIVE ;
 int P2P_FIND_START_WITH_FULL ;
 scalar_t__ WPAS_DBUS_TYPE_BINARRAY ;
 unsigned int WPS_DEV_TYPE_LEN ;
 int dbus_message_iter_init (int *,int *) ;
 int os_free (int *) ;
 int * os_malloc (unsigned int) ;
 int os_memcpy (int *,int ,unsigned int) ;
 scalar_t__ os_strcmp (int *,char*) ;
 int wpa_dbus_dict_entry_clear (struct wpa_dbus_dict_entry*) ;
 int wpa_dbus_dict_get_entry (int *,struct wpa_dbus_dict_entry*) ;
 scalar_t__ wpa_dbus_dict_has_dict_entry (int *) ;
 int wpa_dbus_dict_open_read (int *,int *,int *) ;
 int wpabuf_head (int ) ;
 unsigned int wpabuf_len (int ) ;
 int * wpas_dbus_error_invalid_args (int *,int *) ;
 int * wpas_dbus_error_unknown_error (int *,char*) ;
 scalar_t__ wpas_p2p_find (struct wpa_supplicant*,unsigned int,int,int,int *,int *,int ,int ,int *,unsigned int) ;

DBusMessage * wpas_dbus_handler_p2p_find(DBusMessage *message,
      struct wpa_supplicant *wpa_s)
{
 struct wpa_dbus_dict_entry entry;
 DBusMessage *reply = ((void*)0);
 DBusMessageIter iter;
 DBusMessageIter iter_dict;
 unsigned int timeout = 0;
 enum p2p_discovery_type type = P2P_FIND_START_WITH_FULL;
 int num_req_dev_types = 0;
 unsigned int i;
 u8 *req_dev_types = ((void*)0);
 unsigned int freq = 0;

 dbus_message_iter_init(message, &iter);
 entry.key = ((void*)0);

 if (!wpa_dbus_dict_open_read(&iter, &iter_dict, ((void*)0)))
  goto error;

 while (wpa_dbus_dict_has_dict_entry(&iter_dict)) {
  if (!wpa_dbus_dict_get_entry(&iter_dict, &entry))
   goto error;

  if (os_strcmp(entry.key, "Timeout") == 0 &&
      entry.type == DBUS_TYPE_INT32) {
   timeout = entry.uint32_value;
  } else if (os_strcmp(entry.key, "RequestedDeviceTypes") == 0) {
   if (entry.type != DBUS_TYPE_ARRAY ||
       entry.array_type != WPAS_DBUS_TYPE_BINARRAY)
    goto error_clear;

   os_free(req_dev_types);
   req_dev_types =
    os_malloc(WPS_DEV_TYPE_LEN * entry.array_len);
   if (!req_dev_types)
    goto error_clear;

   for (i = 0; i < entry.array_len; i++) {
    if (wpabuf_len(entry.binarray_value[i]) !=
        WPS_DEV_TYPE_LEN)
     goto error_clear;
    os_memcpy(req_dev_types + i * WPS_DEV_TYPE_LEN,
       wpabuf_head(entry.binarray_value[i]),
       WPS_DEV_TYPE_LEN);
   }
   num_req_dev_types = entry.array_len;
  } else if (os_strcmp(entry.key, "DiscoveryType") == 0 &&
      entry.type == DBUS_TYPE_STRING) {
   if (os_strcmp(entry.str_value, "start_with_full") == 0)
    type = P2P_FIND_START_WITH_FULL;
   else if (os_strcmp(entry.str_value, "social") == 0)
    type = P2P_FIND_ONLY_SOCIAL;
   else if (os_strcmp(entry.str_value, "progressive") == 0)
    type = P2P_FIND_PROGRESSIVE;
   else
    goto error_clear;
  } else if (os_strcmp(entry.key, "freq") == 0 &&
      (entry.type == DBUS_TYPE_INT32 ||
       entry.type == DBUS_TYPE_UINT32)) {
   freq = entry.uint32_value;
  } else
   goto error_clear;
  wpa_dbus_dict_entry_clear(&entry);
 }

 wpa_s = wpa_s->global->p2p_init_wpa_s;

 if (wpas_p2p_find(wpa_s, timeout, type, num_req_dev_types,
     req_dev_types, ((void*)0), 0, 0, ((void*)0), freq))
  reply = wpas_dbus_error_unknown_error(
   message, "Could not start P2P find");

 os_free(req_dev_types);
 return reply;

error_clear:
 wpa_dbus_dict_entry_clear(&entry);
error:
 os_free(req_dev_types);
 reply = wpas_dbus_error_invalid_args(message, entry.key);
 return reply;
}
