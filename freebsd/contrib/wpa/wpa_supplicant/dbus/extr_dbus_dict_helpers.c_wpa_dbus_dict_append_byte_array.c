
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dbus_uint32_t ;
typedef int dbus_bool_t ;
typedef int DBusMessageIter ;


 int FALSE ;
 int _wpa_dbus_add_dict_entry_byte_array (int *,char const*,char const*,scalar_t__ const) ;

dbus_bool_t wpa_dbus_dict_append_byte_array(DBusMessageIter *iter_dict,
         const char *key,
         const char *value,
         const dbus_uint32_t value_len)
{
 if (!key || (!value && value_len != 0))
  return FALSE;
 return _wpa_dbus_add_dict_entry_byte_array(iter_dict, key, value,
         value_len);
}
