
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbus_bool_t ;
typedef int DBusMessageIter ;


 int DBUS_TYPE_DICT_ENTRY ;
 int DBUS_TYPE_STRING ;
 int FALSE ;
 int dbus_message_iter_append_basic (int *,int ,char const**) ;
 int dbus_message_iter_open_container (int *,int ,int *,int *) ;

__attribute__((used)) static dbus_bool_t _wpa_dbus_add_dict_entry_start(
 DBusMessageIter *iter_dict, DBusMessageIter *iter_dict_entry,
 const char *key, const int value_type)
{
 if (!dbus_message_iter_open_container(iter_dict,
           DBUS_TYPE_DICT_ENTRY, ((void*)0),
           iter_dict_entry))
  return FALSE;

 return dbus_message_iter_append_basic(iter_dict_entry, DBUS_TYPE_STRING,
           &key);
}
