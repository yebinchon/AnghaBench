
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbus_bool_t ;
typedef int DBusMessageIter ;


 scalar_t__ DBUS_TYPE_DICT_ENTRY ;
 int FALSE ;
 scalar_t__ dbus_message_iter_get_arg_type (int *) ;

dbus_bool_t wpa_dbus_dict_has_dict_entry(DBusMessageIter *iter_dict)
{
 if (!iter_dict)
  return FALSE;
 return dbus_message_iter_get_arg_type(iter_dict) ==
  DBUS_TYPE_DICT_ENTRY;
}
