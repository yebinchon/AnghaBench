
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_dbus_object_desc {int user_data; struct wpa_dbus_method_desc* methods; } ;
struct wpa_dbus_method_desc {int * (* method_handler ) (int *,int ) ;int * dbus_method; int * dbus_interface; } ;
typedef int DBusMessage ;


 int DBUS_ERROR_INVALID_ARGS ;
 int DBUS_ERROR_UNKNOWN_METHOD ;
 int MSG_DEBUG ;
 int WPAS_DBUS_INTERFACE_MAX ;
 int WPAS_DBUS_METHOD_SIGNAL_PROP_MAX ;
 char* dbus_message_get_interface (int *) ;
 char* dbus_message_get_member (int *) ;
 int dbus_message_get_path (int *) ;
 int * dbus_message_new_error (int *,int ,int *) ;
 int is_signature_correct (int *,struct wpa_dbus_method_desc const*) ;
 int os_strncmp (int *,char const*,int ) ;
 int * stub1 (int *,int ) ;
 int wpa_printf (int ,char*,char const*,char const*,int ) ;

__attribute__((used)) static DBusMessage * msg_method_handler(DBusMessage *message,
     struct wpa_dbus_object_desc *obj_dsc)
{
 const struct wpa_dbus_method_desc *method_dsc = obj_dsc->methods;
 const char *method;
 const char *msg_interface;

 method = dbus_message_get_member(message);
 msg_interface = dbus_message_get_interface(message);


 while (method_dsc && method_dsc->dbus_method) {

  if (!os_strncmp(method_dsc->dbus_method, method,
    WPAS_DBUS_METHOD_SIGNAL_PROP_MAX) &&
      !os_strncmp(method_dsc->dbus_interface, msg_interface,
    WPAS_DBUS_INTERFACE_MAX))
   break;

  method_dsc++;
 }
 if (method_dsc == ((void*)0) || method_dsc->dbus_method == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "no method handler for %s.%s on %s",
      msg_interface, method,
      dbus_message_get_path(message));
  return dbus_message_new_error(message,
           DBUS_ERROR_UNKNOWN_METHOD, ((void*)0));
 }

 if (!is_signature_correct(message, method_dsc)) {
  return dbus_message_new_error(message, DBUS_ERROR_INVALID_ARGS,
           ((void*)0));
 }

 return method_dsc->method_handler(message, obj_dsc->user_data);
}
