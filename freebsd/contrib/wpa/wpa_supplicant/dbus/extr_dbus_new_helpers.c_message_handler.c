
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_dbus_object_desc {int dummy; } ;
typedef int DBusMessage ;
typedef int DBusHandlerResult ;
typedef int DBusConnection ;


 int DBUS_ERROR_UNKNOWN_METHOD ;
 int DBUS_HANDLER_RESULT_HANDLED ;
 int DBUS_HANDLER_RESULT_NOT_YET_HANDLED ;
 int MSG_MSGDUMP ;
 int WPAS_DBUS_INTERFACE_MAX ;
 int WPAS_DBUS_METHOD_SIGNAL_PROP_MAX ;
 int WPA_DBUS_INTROSPECTION_INTERFACE ;
 int WPA_DBUS_INTROSPECTION_METHOD ;
 int WPA_DBUS_PROPERTIES_INTERFACE ;
 int dbus_connection_send (int *,int *,int *) ;
 char* dbus_message_get_interface (int *) ;
 char* dbus_message_get_member (int *) ;
 int dbus_message_get_no_reply (int *) ;
 char* dbus_message_get_path (int *) ;
 int dbus_message_get_signature (int *) ;
 int * dbus_message_new_error (int *,int ,char*) ;
 int * dbus_message_new_method_return (int *) ;
 int dbus_message_unref (int *) ;
 int * msg_method_handler (int *,struct wpa_dbus_object_desc*) ;
 int os_strncmp (int ,char const*,int ) ;
 int * properties_handler (int *,struct wpa_dbus_object_desc*) ;
 int wpa_dbus_flush_all_changed_properties (int *) ;
 int * wpa_dbus_introspect (int *,struct wpa_dbus_object_desc*) ;
 int wpa_printf (int ,char*,char const*,char const*,char const*,int ) ;

__attribute__((used)) static DBusHandlerResult message_handler(DBusConnection *connection,
      DBusMessage *message, void *user_data)
{
 struct wpa_dbus_object_desc *obj_dsc = user_data;
 const char *method;
 const char *path;
 const char *msg_interface;
 DBusMessage *reply;


 method = dbus_message_get_member(message);
 path = dbus_message_get_path(message);
 msg_interface = dbus_message_get_interface(message);
 if (!method || !path || !msg_interface)
  return DBUS_HANDLER_RESULT_NOT_YET_HANDLED;

 wpa_printf(MSG_MSGDUMP, "dbus: %s.%s (%s) [%s]",
     msg_interface, method, path,
     dbus_message_get_signature(message));


 if (!os_strncmp(WPA_DBUS_INTROSPECTION_METHOD, method,
   WPAS_DBUS_METHOD_SIGNAL_PROP_MAX) &&
     !os_strncmp(WPA_DBUS_INTROSPECTION_INTERFACE, msg_interface,
   WPAS_DBUS_INTERFACE_MAX)) {



  reply = dbus_message_new_error(
   message, DBUS_ERROR_UNKNOWN_METHOD,
   "wpa_supplicant was compiled without introspection support.");

 } else if (!os_strncmp(WPA_DBUS_PROPERTIES_INTERFACE, msg_interface,
        WPAS_DBUS_INTERFACE_MAX)) {

  reply = properties_handler(message, obj_dsc);
 } else {
  reply = msg_method_handler(message, obj_dsc);
 }


 if (!reply)
  reply = dbus_message_new_method_return(message);
 if (reply) {
  if (!dbus_message_get_no_reply(message))
   dbus_connection_send(connection, reply, ((void*)0));
  dbus_message_unref(reply);
 }

 wpa_dbus_flush_all_changed_properties(connection);

 return DBUS_HANDLER_RESULT_HANDLED;
}
