
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DBusConnection ;


 int dispatch_data (int *) ;

__attribute__((used)) static void dispatch_initial_dbus_messages(void *eloop_ctx, void *timeout_ctx)
{
 DBusConnection *con = eloop_ctx;
 dispatch_data(con);
}
