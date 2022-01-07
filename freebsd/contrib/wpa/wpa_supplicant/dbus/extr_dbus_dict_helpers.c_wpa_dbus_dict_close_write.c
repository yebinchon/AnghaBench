
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbus_bool_t ;
typedef int DBusMessageIter ;


 int FALSE ;
 int dbus_message_iter_close_container (int *,int *) ;

dbus_bool_t wpa_dbus_dict_close_write(DBusMessageIter *iter,
          DBusMessageIter *iter_dict)
{
 if (!iter || !iter_dict)
  return FALSE;

 return dbus_message_iter_close_container(iter, iter_dict);
}
