
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_dbus_object_desc {int dummy; } ;
typedef int DBusMessage ;


 int DBUS_ERROR_INVALID_ARGS ;
 int dbus_message_get_signature (int *) ;
 int * dbus_message_new_error (int *,int ,int *) ;
 int * get_all_properties (int *,char*,struct wpa_dbus_object_desc*) ;
 scalar_t__ os_strcmp (int ,char*) ;

__attribute__((used)) static DBusMessage * properties_get_all(DBusMessage *message, char *interface,
     struct wpa_dbus_object_desc *obj_dsc)
{
 if (os_strcmp(dbus_message_get_signature(message), "s") != 0)
  return dbus_message_new_error(message, DBUS_ERROR_INVALID_ARGS,
           ((void*)0));

 return get_all_properties(message, interface, obj_dsc);
}
