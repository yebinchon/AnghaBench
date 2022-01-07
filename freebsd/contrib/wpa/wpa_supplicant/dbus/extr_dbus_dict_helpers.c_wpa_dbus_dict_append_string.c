
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbus_bool_t ;
typedef int DBusMessageIter ;


 int DBUS_TYPE_STRING ;
 int FALSE ;
 int _wpa_dbus_add_dict_entry_basic (int *,char const*,int ,char const**) ;

dbus_bool_t wpa_dbus_dict_append_string(DBusMessageIter *iter_dict,
     const char *key, const char *value)
{
 if (!value)
  return FALSE;
 return _wpa_dbus_add_dict_entry_basic(iter_dict, key, DBUS_TYPE_STRING,
           &value);
}
