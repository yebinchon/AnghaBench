
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DBusConnection ;


 scalar_t__ DBUS_DISPATCH_DATA_REMAINS ;
 int dbus_connection_dispatch (int *) ;
 scalar_t__ dbus_connection_get_dispatch_status (int *) ;

__attribute__((used)) static void dispatch_data(DBusConnection *con)
{
 while (dbus_connection_get_dispatch_status(con) ==
        DBUS_DISPATCH_DATA_REMAINS)
  dbus_connection_dispatch(con);
}
