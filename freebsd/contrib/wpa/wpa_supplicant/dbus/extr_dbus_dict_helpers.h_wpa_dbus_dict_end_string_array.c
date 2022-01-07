
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbus_bool_t ;
typedef int DBusMessageIter ;


 int wpa_dbus_dict_end_array (int *,int *,int *,int *) ;

__attribute__((used)) static inline dbus_bool_t
wpa_dbus_dict_end_string_array(DBusMessageIter *iter_dict,
          DBusMessageIter *iter_dict_entry,
          DBusMessageIter *iter_dict_val,
          DBusMessageIter *iter_array)
{
 return wpa_dbus_dict_end_array(iter_dict, iter_dict_entry,
           iter_dict_val, iter_array);
}
