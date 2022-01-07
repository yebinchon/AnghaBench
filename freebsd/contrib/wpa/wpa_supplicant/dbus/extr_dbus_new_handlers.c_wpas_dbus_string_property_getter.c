
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbus_bool_t ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_TYPE_STRING ;
 int wpas_dbus_simple_property_getter (int *,int ,void const**,int *) ;

dbus_bool_t wpas_dbus_string_property_getter(DBusMessageIter *iter,
          const void *val,
          DBusError *error)
{
 if (!val)
  val = "";
 return wpas_dbus_simple_property_getter(iter, DBUS_TYPE_STRING,
      &val, error);
}
