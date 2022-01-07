
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_dbus_object_desc {int dummy; } ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;


 int DBUS_ERROR_INVALID_ARGS ;
 int DBUS_ERROR_UNKNOWN_METHOD ;
 scalar_t__ DBUS_TYPE_STRING ;
 int WPAS_DBUS_METHOD_SIGNAL_PROP_MAX ;
 int WPA_DBUS_PROPERTIES_GET ;
 int WPA_DBUS_PROPERTIES_GETALL ;
 int WPA_DBUS_PROPERTIES_SET ;
 char* dbus_message_get_member (int *) ;
 scalar_t__ dbus_message_iter_get_arg_type (int *) ;
 int dbus_message_iter_get_basic (int *,char**) ;
 int dbus_message_iter_init (int *,int *) ;
 int * dbus_message_new_error (int *,int ,int *) ;
 int os_strncmp (int ,char const*,int ) ;
 int * properties_get_all (int *,char*,struct wpa_dbus_object_desc*) ;
 int * properties_get_or_set (int *,int *,char*,struct wpa_dbus_object_desc*) ;

__attribute__((used)) static DBusMessage * properties_handler(DBusMessage *message,
     struct wpa_dbus_object_desc *obj_dsc)
{
 DBusMessageIter iter;
 char *interface;
 const char *method;

 method = dbus_message_get_member(message);
 dbus_message_iter_init(message, &iter);

 if (!os_strncmp(WPA_DBUS_PROPERTIES_GET, method,
   WPAS_DBUS_METHOD_SIGNAL_PROP_MAX) ||
     !os_strncmp(WPA_DBUS_PROPERTIES_SET, method,
   WPAS_DBUS_METHOD_SIGNAL_PROP_MAX) ||
     !os_strncmp(WPA_DBUS_PROPERTIES_GETALL, method,
   WPAS_DBUS_METHOD_SIGNAL_PROP_MAX)) {

  if (dbus_message_iter_get_arg_type(&iter) != DBUS_TYPE_STRING) {
   return dbus_message_new_error(message,
            DBUS_ERROR_INVALID_ARGS,
            ((void*)0));
  }

  dbus_message_iter_get_basic(&iter, &interface);

  if (!os_strncmp(WPA_DBUS_PROPERTIES_GETALL, method,
    WPAS_DBUS_METHOD_SIGNAL_PROP_MAX)) {

   return properties_get_all(message, interface, obj_dsc);
  }

  return properties_get_or_set(message, &iter, interface,
          obj_dsc);
 }
 return dbus_message_new_error(message, DBUS_ERROR_UNKNOWN_METHOD,
          ((void*)0));
}
