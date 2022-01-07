
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int dbus_bool_t ;
typedef int DBusMessageIter ;


 int DBUS_TYPE_ARRAY ;
 int DBUS_TYPE_BYTE ;
 int DBUS_TYPE_BYTE_AS_STRING ;
 int FALSE ;
 int dbus_message_iter_append_basic (int *,int ,int const*) ;
 int dbus_message_iter_close_container (int *,int *) ;
 int dbus_message_iter_open_container (int *,int ,int ,int *) ;

dbus_bool_t wpa_dbus_dict_bin_array_add_element(DBusMessageIter *iter_array,
      const u8 *value,
      size_t value_len)
{
 DBusMessageIter iter_bytes;
 size_t i;

 if (!iter_array || !value ||
     !dbus_message_iter_open_container(iter_array, DBUS_TYPE_ARRAY,
           DBUS_TYPE_BYTE_AS_STRING,
           &iter_bytes))
  return FALSE;

 for (i = 0; i < value_len; i++) {
  if (!dbus_message_iter_append_basic(&iter_bytes,
          DBUS_TYPE_BYTE,
          &(value[i])))
   return FALSE;
 }

 return dbus_message_iter_close_container(iter_array, &iter_bytes);
}
