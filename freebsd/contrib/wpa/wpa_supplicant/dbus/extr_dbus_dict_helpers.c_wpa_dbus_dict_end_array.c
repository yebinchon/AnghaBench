
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbus_bool_t ;
typedef int DBusMessageIter ;


 int FALSE ;
 int _wpa_dbus_add_dict_entry_end (int *,int *,int *) ;
 int dbus_message_iter_close_container (int *,int *) ;

dbus_bool_t wpa_dbus_dict_end_array(DBusMessageIter *iter_dict,
        DBusMessageIter *iter_dict_entry,
        DBusMessageIter *iter_dict_val,
        DBusMessageIter *iter_array)
{
 if (!iter_dict || !iter_dict_entry || !iter_dict_val || !iter_array ||
     !dbus_message_iter_close_container(iter_dict_val, iter_array))
  return FALSE;

 return _wpa_dbus_add_dict_entry_end(iter_dict, iter_dict_entry,
         iter_dict_val);
}
