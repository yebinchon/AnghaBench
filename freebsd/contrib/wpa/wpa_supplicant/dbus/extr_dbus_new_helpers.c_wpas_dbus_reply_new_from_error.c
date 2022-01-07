
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; char const* message; } ;
typedef int DBusMessage ;
typedef TYPE_1__ DBusError ;


 int * dbus_message_new_error (int *,char const*,char const*) ;

DBusMessage * wpas_dbus_reply_new_from_error(DBusMessage *message,
          DBusError *error,
          const char *fallback_name,
          const char *fallback_string)
{
 if (error && error->name && error->message) {
  return dbus_message_new_error(message, error->name,
           error->message);
 }
 if (fallback_name && fallback_string) {
  return dbus_message_new_error(message, fallback_name,
           fallback_string);
 }
 return ((void*)0);
}
