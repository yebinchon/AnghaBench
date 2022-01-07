
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DBusMessage ;


 int WPAS_DBUS_ERROR_IFACE_SCAN_ERROR ;
 int * dbus_message_new_error (int *,int ,char const*) ;

__attribute__((used)) static DBusMessage * wpas_dbus_error_scan_error(DBusMessage *message,
      const char *error)
{
 return dbus_message_new_error(message,
          WPAS_DBUS_ERROR_IFACE_SCAN_ERROR,
          error);
}
