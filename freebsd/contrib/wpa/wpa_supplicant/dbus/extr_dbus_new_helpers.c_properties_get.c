
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_dbus_property_desc {scalar_t__ (* getter ) (struct wpa_dbus_property_desc const*,int *,int *,void*) ;} ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;
typedef int DBusError ;


 int DBUS_ERROR_FAILED ;
 int DBUS_ERROR_INVALID_ARGS ;
 scalar_t__ FALSE ;
 int dbus_error_free (int *) ;
 int dbus_error_init (int *) ;
 int dbus_message_get_signature (int *) ;
 int dbus_message_iter_init_append (int *,int *) ;
 int * dbus_message_new_error (int *,int ,char*) ;
 int * dbus_message_new_method_return (int *) ;
 int dbus_message_unref (int *) ;
 scalar_t__ os_strcmp (int ,char*) ;
 scalar_t__ stub1 (struct wpa_dbus_property_desc const*,int *,int *,void*) ;
 int * wpas_dbus_reply_new_from_error (int *,int *,int ,char*) ;

__attribute__((used)) static DBusMessage * properties_get(DBusMessage *message,
        const struct wpa_dbus_property_desc *dsc,
        void *user_data)
{
 DBusMessage *reply;
 DBusMessageIter iter;
 DBusError error;

 if (os_strcmp(dbus_message_get_signature(message), "ss")) {
  return dbus_message_new_error(message, DBUS_ERROR_INVALID_ARGS,
           ((void*)0));
 }

 if (dsc->getter == ((void*)0)) {
  return dbus_message_new_error(message, DBUS_ERROR_INVALID_ARGS,
           "Property is write-only");
 }

 reply = dbus_message_new_method_return(message);
 dbus_message_iter_init_append(reply, &iter);

 dbus_error_init(&error);
 if (dsc->getter(dsc, &iter, &error, user_data) == FALSE) {
  dbus_message_unref(reply);
  reply = wpas_dbus_reply_new_from_error(
   message, &error, DBUS_ERROR_FAILED,
   "Failed to read property");
  dbus_error_free(&error);
 }

 return reply;
}
