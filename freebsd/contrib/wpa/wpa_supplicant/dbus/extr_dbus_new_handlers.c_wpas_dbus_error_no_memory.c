
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DBusMessage ;


 int DBUS_ERROR_NO_MEMORY ;
 int MSG_DEBUG ;
 int * dbus_message_new_error (int *,int ,int *) ;
 int wpa_printf (int ,char*) ;

DBusMessage * wpas_dbus_error_no_memory(DBusMessage *message)
{
 wpa_printf(MSG_DEBUG, "dbus: Failed to allocate memory");
 return dbus_message_new_error(message, DBUS_ERROR_NO_MEMORY, ((void*)0));
}
