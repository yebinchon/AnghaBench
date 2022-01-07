
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbus_bool_t ;
typedef int DBusMessageIter ;


 int FALSE ;
 int dbus_message_iter_close_container (int *,int *) ;

__attribute__((used)) static dbus_bool_t _wpa_dbus_add_dict_entry_end(
 DBusMessageIter *iter_dict, DBusMessageIter *iter_dict_entry,
 DBusMessageIter *iter_dict_val)
{
 if (!dbus_message_iter_close_container(iter_dict_entry, iter_dict_val))
  return FALSE;

 return dbus_message_iter_close_container(iter_dict, iter_dict_entry);
}
