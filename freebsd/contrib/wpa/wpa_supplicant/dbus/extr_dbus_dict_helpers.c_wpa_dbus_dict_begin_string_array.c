
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbus_bool_t ;
typedef int DBusMessageIter ;


 int DBUS_TYPE_STRING_AS_STRING ;
 int wpa_dbus_dict_begin_array (int *,char const*,int ,int *,int *,int *) ;

dbus_bool_t wpa_dbus_dict_begin_string_array(DBusMessageIter *iter_dict,
          const char *key,
          DBusMessageIter *iter_dict_entry,
          DBusMessageIter *iter_dict_val,
          DBusMessageIter *iter_array)
{
 return wpa_dbus_dict_begin_array(
  iter_dict, key,
  DBUS_TYPE_STRING_AS_STRING,
  iter_dict_entry, iter_dict_val, iter_array);
}
