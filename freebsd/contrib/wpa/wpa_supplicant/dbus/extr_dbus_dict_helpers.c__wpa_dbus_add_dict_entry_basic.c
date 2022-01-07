
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbus_bool_t ;
typedef int DBusMessageIter ;


 int DBUS_TYPE_VARIANT ;
 int FALSE ;
 int _wpa_dbus_add_dict_entry_end (int *,int *,int *) ;
 int _wpa_dbus_add_dict_entry_start (int *,int *,char const*,int const) ;
 int dbus_message_iter_append_basic (int *,int const,void const*) ;
 int dbus_message_iter_open_container (int *,int ,char const*,int *) ;
 char* wpa_dbus_type_as_string (int const) ;

__attribute__((used)) static dbus_bool_t _wpa_dbus_add_dict_entry_basic(DBusMessageIter *iter_dict,
        const char *key,
        const int value_type,
        const void *value)
{
 DBusMessageIter iter_dict_entry, iter_dict_val;
 const char *type_as_string = ((void*)0);

 if (key == ((void*)0))
  return FALSE;

 type_as_string = wpa_dbus_type_as_string(value_type);
 if (!type_as_string)
  return FALSE;

 if (!_wpa_dbus_add_dict_entry_start(iter_dict, &iter_dict_entry,
         key, value_type) ||
     !dbus_message_iter_open_container(&iter_dict_entry,
           DBUS_TYPE_VARIANT,
           type_as_string, &iter_dict_val) ||
     !dbus_message_iter_append_basic(&iter_dict_val, value_type, value))
  return FALSE;

 return _wpa_dbus_add_dict_entry_end(iter_dict, &iter_dict_entry,
         &iter_dict_val);
}
