
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dbus_uint32_t ;
typedef int dbus_bool_t ;
typedef int DBusMessageIter ;


 int FALSE ;
 int wpa_dbus_dict_begin_string_array (int *,char const*,int *,int *,int *) ;
 int wpa_dbus_dict_end_string_array (int *,int *,int *,int *) ;
 int wpa_dbus_dict_string_array_add_element (int *,char const*) ;

dbus_bool_t wpa_dbus_dict_append_string_array(DBusMessageIter *iter_dict,
           const char *key,
           const char **items,
           const dbus_uint32_t num_items)
{
 DBusMessageIter iter_dict_entry, iter_dict_val, iter_array;
 dbus_uint32_t i;

 if (!key || (!items && num_items != 0) ||
     !wpa_dbus_dict_begin_string_array(iter_dict, key,
           &iter_dict_entry, &iter_dict_val,
           &iter_array))
  return FALSE;

 for (i = 0; i < num_items; i++) {
  if (!wpa_dbus_dict_string_array_add_element(&iter_array,
           items[i]))
   return FALSE;
 }

 return wpa_dbus_dict_end_string_array(iter_dict, &iter_dict_entry,
           &iter_dict_val, &iter_array);
}
