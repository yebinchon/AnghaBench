
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {int dummy; } ;
struct wpa_dbus_dict_entry {scalar_t__ type; scalar_t__ uint32_value; scalar_t__ array_type; int array_len; int bytearray_value; int key; int str_value; } ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;


 scalar_t__ DBUS_TYPE_ARRAY ;
 scalar_t__ DBUS_TYPE_BYTE ;
 scalar_t__ DBUS_TYPE_INT32 ;
 scalar_t__ DBUS_TYPE_STRING ;
 int dbus_message_iter_init (int *,int *) ;
 int os_free (char*) ;
 scalar_t__ os_strcmp (int ,char*) ;
 char* os_strdup (int ) ;
 int wpa_dbus_dict_entry_clear (struct wpa_dbus_dict_entry*) ;
 int wpa_dbus_dict_get_entry (int *,struct wpa_dbus_dict_entry*) ;
 scalar_t__ wpa_dbus_dict_has_dict_entry (int *) ;
 int wpa_dbus_dict_open_read (int *,int *,int *) ;
 struct wpabuf* wpabuf_alloc_copy (int ,int ) ;
 int wpabuf_free (struct wpabuf*) ;
 int * wpas_dbus_error_invalid_args (int *,int *) ;
 scalar_t__ wpas_p2p_service_add_bonjour (struct wpa_supplicant*,struct wpabuf*,struct wpabuf*) ;
 scalar_t__ wpas_p2p_service_add_upnp (struct wpa_supplicant*,scalar_t__,char*) ;

DBusMessage * wpas_dbus_handler_p2p_add_service(DBusMessage *message,
      struct wpa_supplicant *wpa_s)
{
 DBusMessageIter iter_dict;
 DBusMessage *reply = ((void*)0);
 DBusMessageIter iter;
 struct wpa_dbus_dict_entry entry;
 int upnp = 0;
 int bonjour = 0;
 char *service = ((void*)0);
 struct wpabuf *query = ((void*)0);
 struct wpabuf *resp = ((void*)0);
 u8 version = 0;

 dbus_message_iter_init(message, &iter);

 if (!wpa_dbus_dict_open_read(&iter, &iter_dict, ((void*)0)))
  goto error;

 while (wpa_dbus_dict_has_dict_entry(&iter_dict)) {
  if (!wpa_dbus_dict_get_entry(&iter_dict, &entry))
   goto error;

  if (os_strcmp(entry.key, "service_type") == 0 &&
      entry.type == DBUS_TYPE_STRING) {
   if (os_strcmp(entry.str_value, "upnp") == 0)
    upnp = 1;
   else if (os_strcmp(entry.str_value, "bonjour") == 0)
    bonjour = 1;
   else
    goto error_clear;
  } else if (os_strcmp(entry.key, "version") == 0 &&
      entry.type == DBUS_TYPE_INT32) {
   version = entry.uint32_value;
  } else if (os_strcmp(entry.key, "service") == 0 &&
      entry.type == DBUS_TYPE_STRING) {
   os_free(service);
   service = os_strdup(entry.str_value);
  } else if (os_strcmp(entry.key, "query") == 0) {
   if (entry.type != DBUS_TYPE_ARRAY ||
       entry.array_type != DBUS_TYPE_BYTE)
    goto error_clear;
   query = wpabuf_alloc_copy(
    entry.bytearray_value,
    entry.array_len);
  } else if (os_strcmp(entry.key, "response") == 0) {
   if (entry.type != DBUS_TYPE_ARRAY ||
       entry.array_type != DBUS_TYPE_BYTE)
    goto error_clear;
   resp = wpabuf_alloc_copy(entry.bytearray_value,
       entry.array_len);
  }
  wpa_dbus_dict_entry_clear(&entry);
 }

 if (upnp == 1) {
  if (version <= 0 || service == ((void*)0))
   goto error;

  if (wpas_p2p_service_add_upnp(wpa_s, version, service) != 0)
   goto error;

 } else if (bonjour == 1) {
  if (query == ((void*)0) || resp == ((void*)0))
   goto error;

  if (wpas_p2p_service_add_bonjour(wpa_s, query, resp) < 0)
   goto error;
  query = ((void*)0);
  resp = ((void*)0);
 } else
  goto error;

 os_free(service);
 return reply;
error_clear:
 wpa_dbus_dict_entry_clear(&entry);
error:
 os_free(service);
 wpabuf_free(query);
 wpabuf_free(resp);
 return wpas_dbus_error_invalid_args(message, ((void*)0));
}
