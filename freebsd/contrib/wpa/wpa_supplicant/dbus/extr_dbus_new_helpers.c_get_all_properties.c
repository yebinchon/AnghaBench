
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_dbus_object_desc {int user_data; int properties; } ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;
typedef int DBusError ;


 int DBUS_ERROR_INVALID_ARGS ;
 int dbus_error_free (int *) ;
 int dbus_error_init (int *) ;
 int dbus_message_iter_init_append (int *,int *) ;
 int * dbus_message_new_method_return (int *) ;
 int dbus_message_unref (int *) ;
 int fill_dict_with_properties (int *,int ,char*,int ,int *) ;
 int wpa_dbus_dict_close_write (int *,int *) ;
 int wpa_dbus_dict_open_write (int *,int *) ;
 int * wpas_dbus_error_no_memory (int *) ;
 int * wpas_dbus_reply_new_from_error (int *,int *,int ,char*) ;

__attribute__((used)) static DBusMessage * get_all_properties(DBusMessage *message, char *interface,
     struct wpa_dbus_object_desc *obj_dsc)
{
 DBusMessage *reply;
 DBusMessageIter iter, dict_iter;
 DBusError error;

 reply = dbus_message_new_method_return(message);
 if (reply == ((void*)0))
  return wpas_dbus_error_no_memory(message);

 dbus_message_iter_init_append(reply, &iter);
 if (!wpa_dbus_dict_open_write(&iter, &dict_iter)) {
  dbus_message_unref(reply);
  return wpas_dbus_error_no_memory(message);
 }

 dbus_error_init(&error);
 if (!fill_dict_with_properties(&dict_iter, obj_dsc->properties,
           interface, obj_dsc->user_data, &error)) {
  wpa_dbus_dict_close_write(&iter, &dict_iter);
  dbus_message_unref(reply);
  reply = wpas_dbus_reply_new_from_error(
   message, &error, DBUS_ERROR_INVALID_ARGS,
   "No readable properties in this interface");
  dbus_error_free(&error);
  return reply;
 }

 if (!wpa_dbus_dict_close_write(&iter, &dict_iter)) {
  dbus_message_unref(reply);
  return wpas_dbus_error_no_memory(message);
 }

 return reply;
}
