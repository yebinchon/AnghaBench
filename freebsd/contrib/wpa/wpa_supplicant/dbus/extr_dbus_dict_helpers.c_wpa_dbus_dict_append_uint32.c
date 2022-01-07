
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbus_uint32_t ;
typedef int dbus_bool_t ;
typedef int DBusMessageIter ;


 int DBUS_TYPE_UINT32 ;
 int _wpa_dbus_add_dict_entry_basic (int *,char const*,int ,int const*) ;

dbus_bool_t wpa_dbus_dict_append_uint32(DBusMessageIter *iter_dict,
     const char *key,
     const dbus_uint32_t value)
{
 return _wpa_dbus_add_dict_entry_basic(iter_dict, key, DBUS_TYPE_UINT32,
           &value);
}
