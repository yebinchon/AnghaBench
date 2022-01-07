
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbus_bool_t ;
typedef int DBusMessageIter ;


 int DBUS_TYPE_STRING ;
 int FALSE ;
 int dbus_message_iter_append_basic (int *,int ,char const**) ;

dbus_bool_t wpa_dbus_dict_string_array_add_element(DBusMessageIter *iter_array,
         const char *elem)
{
 if (!iter_array || !elem)
  return FALSE;

 return dbus_message_iter_append_basic(iter_array, DBUS_TYPE_STRING,
           &elem);
}
