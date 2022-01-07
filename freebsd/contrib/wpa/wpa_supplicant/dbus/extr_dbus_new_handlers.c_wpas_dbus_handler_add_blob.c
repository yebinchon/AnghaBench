
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int conf; } ;
struct wpa_config_blob {int len; struct wpa_config_blob* data; struct wpa_config_blob* name; } ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;


 int WPAS_DBUS_ERROR_BLOB_EXISTS ;
 int dbus_message_iter_get_basic (int *,char**) ;
 int dbus_message_iter_get_fixed_array (int *,int **,int*) ;
 int dbus_message_iter_init (int *,int *) ;
 int dbus_message_iter_next (int *) ;
 int dbus_message_iter_recurse (int *,int *) ;
 int * dbus_message_new_error (int *,int ,int *) ;
 int os_free (struct wpa_config_blob*) ;
 struct wpa_config_blob* os_memdup (int *,int) ;
 struct wpa_config_blob* os_strdup (char*) ;
 struct wpa_config_blob* os_zalloc (int) ;
 scalar_t__ wpa_config_get_blob (int ,char*) ;
 int wpa_config_set_blob (int ,struct wpa_config_blob*) ;
 int * wpas_dbus_error_no_memory (int *) ;
 int wpas_notify_blob_added (struct wpa_supplicant*,struct wpa_config_blob*) ;

DBusMessage * wpas_dbus_handler_add_blob(DBusMessage *message,
      struct wpa_supplicant *wpa_s)
{
 DBusMessage *reply = ((void*)0);
 DBusMessageIter iter, array_iter;

 char *blob_name;
 u8 *blob_data;
 int blob_len;
 struct wpa_config_blob *blob = ((void*)0);

 dbus_message_iter_init(message, &iter);
 dbus_message_iter_get_basic(&iter, &blob_name);

 if (wpa_config_get_blob(wpa_s->conf, blob_name)) {
  return dbus_message_new_error(message,
           WPAS_DBUS_ERROR_BLOB_EXISTS,
           ((void*)0));
 }

 dbus_message_iter_next(&iter);
 dbus_message_iter_recurse(&iter, &array_iter);

 dbus_message_iter_get_fixed_array(&array_iter, &blob_data, &blob_len);

 blob = os_zalloc(sizeof(*blob));
 if (!blob) {
  reply = wpas_dbus_error_no_memory(message);
  goto err;
 }

 blob->data = os_memdup(blob_data, blob_len);
 blob->name = os_strdup(blob_name);
 if (!blob->data || !blob->name) {
  reply = wpas_dbus_error_no_memory(message);
  goto err;
 }
 blob->len = blob_len;

 wpa_config_set_blob(wpa_s->conf, blob);
 wpas_notify_blob_added(wpa_s, blob->name);

 return reply;

err:
 if (blob) {
  os_free(blob->name);
  os_free(blob->data);
  os_free(blob);
 }
 return reply;
}
