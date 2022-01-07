
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int conf; } ;
typedef int DBusMessage ;


 int DBUS_TYPE_INVALID ;
 int DBUS_TYPE_STRING ;
 int WPAS_DBUS_ERROR_BLOB_UNKNOWN ;
 int dbus_message_get_args (int *,int *,int ,char**,int ) ;
 int * dbus_message_new_error (int *,int ,char*) ;
 scalar_t__ wpa_config_remove_blob (int ,char*) ;
 int wpas_notify_blob_removed (struct wpa_supplicant*,char*) ;

DBusMessage * wpas_dbus_handler_remove_blob(DBusMessage *message,
         struct wpa_supplicant *wpa_s)
{
 DBusMessage *reply = ((void*)0);
 char *blob_name;

 dbus_message_get_args(message, ((void*)0), DBUS_TYPE_STRING, &blob_name,
         DBUS_TYPE_INVALID);

 if (wpa_config_remove_blob(wpa_s->conf, blob_name)) {
  return dbus_message_new_error(message,
           WPAS_DBUS_ERROR_BLOB_UNKNOWN,
           "Blob id not set");
 }
 wpas_notify_blob_removed(wpa_s, blob_name);

 return reply;

}
