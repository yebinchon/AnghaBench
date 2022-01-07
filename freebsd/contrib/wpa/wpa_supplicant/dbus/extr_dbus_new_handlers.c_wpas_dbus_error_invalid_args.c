
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DBusMessage ;


 int DBUS_TYPE_INVALID ;
 int DBUS_TYPE_STRING ;
 int WPAS_DBUS_ERROR_INVALID_ARGS ;
 int dbus_message_append_args (int *,int ,char const**,int ) ;
 int * dbus_message_new_error (int *,int ,char*) ;

DBusMessage * wpas_dbus_error_invalid_args(DBusMessage *message,
       const char *arg)
{
 DBusMessage *reply;

 reply = dbus_message_new_error(
  message, WPAS_DBUS_ERROR_INVALID_ARGS,
  "Did not receive correct message arguments.");
 if (arg != ((void*)0))
  dbus_message_append_args(reply, DBUS_TYPE_STRING, &arg,
      DBUS_TYPE_INVALID);

 return reply;
}
