
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DBusWatch ;


 unsigned int DBUS_WATCH_READABLE ;
 unsigned int DBUS_WATCH_WRITABLE ;
 int EVENT_TYPE_EXCEPTION ;
 int EVENT_TYPE_READ ;
 int EVENT_TYPE_WRITE ;
 unsigned int dbus_watch_get_flags (int *) ;
 int dbus_watch_get_unix_fd (int *) ;
 int dbus_watch_set_data (int *,int *,int *) ;
 int eloop_unregister_sock (int,int ) ;

__attribute__((used)) static void remove_watch(DBusWatch *watch, void *data)
{
 unsigned int flags;
 int fd;

 flags = dbus_watch_get_flags(watch);
 fd = dbus_watch_get_unix_fd(watch);

 eloop_unregister_sock(fd, EVENT_TYPE_EXCEPTION);

 if (flags & DBUS_WATCH_READABLE)
  eloop_unregister_sock(fd, EVENT_TYPE_READ);
 if (flags & DBUS_WATCH_WRITABLE)
  eloop_unregister_sock(fd, EVENT_TYPE_WRITE);

 dbus_watch_set_data(watch, ((void*)0), ((void*)0));
}
