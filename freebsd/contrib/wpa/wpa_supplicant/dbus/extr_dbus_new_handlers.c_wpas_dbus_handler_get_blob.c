
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int conf; } ;
struct wpa_config_blob {int len; int data; } ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;


 int DBUS_TYPE_ARRAY ;
 int DBUS_TYPE_BYTE ;
 int DBUS_TYPE_BYTE_AS_STRING ;
 int DBUS_TYPE_INVALID ;
 int DBUS_TYPE_STRING ;
 int WPAS_DBUS_ERROR_BLOB_UNKNOWN ;
 int dbus_message_get_args (int *,int *,int ,char**,int ) ;
 int dbus_message_iter_append_fixed_array (int *,int ,int *,int ) ;
 int dbus_message_iter_close_container (int *,int *) ;
 int dbus_message_iter_init_append (int *,int *) ;
 int dbus_message_iter_open_container (int *,int ,int ,int *) ;
 int * dbus_message_new_error (int *,int ,char*) ;
 int * dbus_message_new_method_return (int *) ;
 int dbus_message_unref (int *) ;
 struct wpa_config_blob* wpa_config_get_blob (int ,char*) ;
 int * wpas_dbus_error_no_memory (int *) ;

DBusMessage * wpas_dbus_handler_get_blob(DBusMessage *message,
      struct wpa_supplicant *wpa_s)
{
 DBusMessage *reply = ((void*)0);
 DBusMessageIter iter, array_iter;

 char *blob_name;
 const struct wpa_config_blob *blob;

 dbus_message_get_args(message, ((void*)0), DBUS_TYPE_STRING, &blob_name,
         DBUS_TYPE_INVALID);

 blob = wpa_config_get_blob(wpa_s->conf, blob_name);
 if (!blob) {
  return dbus_message_new_error(message,
           WPAS_DBUS_ERROR_BLOB_UNKNOWN,
           "Blob id not set");
 }

 reply = dbus_message_new_method_return(message);
 if (!reply)
  return wpas_dbus_error_no_memory(message);

 dbus_message_iter_init_append(reply, &iter);

 if (!dbus_message_iter_open_container(&iter, DBUS_TYPE_ARRAY,
           DBUS_TYPE_BYTE_AS_STRING,
           &array_iter) ||
     !dbus_message_iter_append_fixed_array(&array_iter, DBUS_TYPE_BYTE,
        &(blob->data), blob->len) ||
     !dbus_message_iter_close_container(&iter, &array_iter)) {
  dbus_message_unref(reply);
  reply = wpas_dbus_error_no_memory(message);
 }

 return reply;
}
