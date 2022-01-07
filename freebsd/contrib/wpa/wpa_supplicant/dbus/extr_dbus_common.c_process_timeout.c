
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DBusTimeout ;


 int dbus_timeout_handle (int *) ;

__attribute__((used)) static void process_timeout(void *eloop_ctx, void *sock_ctx)
{
 DBusTimeout *timeout = sock_ctx;
 dbus_timeout_handle(timeout);
}
