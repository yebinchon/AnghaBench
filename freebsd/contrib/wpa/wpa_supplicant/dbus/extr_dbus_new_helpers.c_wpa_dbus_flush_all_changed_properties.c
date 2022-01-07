
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DBusConnection ;


 int WPAS_DBUS_NEW_PATH ;
 int recursive_flush_changed_properties (int *,int ) ;

void wpa_dbus_flush_all_changed_properties(DBusConnection *con)
{
 recursive_flush_changed_properties(con, WPAS_DBUS_NEW_PATH);
}
