
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpas_dbus_priv {int dummy; } ;
typedef int dbus_bool_t ;
typedef int DBusWatch ;


 unsigned int DBUS_WATCH_READABLE ;
 unsigned int DBUS_WATCH_WRITABLE ;
 int EVENT_TYPE_EXCEPTION ;
 int EVENT_TYPE_READ ;
 int EVENT_TYPE_WRITE ;
 int TRUE ;
 int dbus_watch_get_enabled (int *) ;
 unsigned int dbus_watch_get_flags (int *) ;
 int dbus_watch_get_unix_fd (int *) ;
 int dbus_watch_set_data (int *,struct wpas_dbus_priv*,int *) ;
 int eloop_register_sock (int,int ,int ,struct wpas_dbus_priv*,int *) ;
 int process_watch_exception ;
 int process_watch_read ;
 int process_watch_write ;

__attribute__((used)) static dbus_bool_t add_watch(DBusWatch *watch, void *data)
{
 struct wpas_dbus_priv *priv = data;
 unsigned int flags;
 int fd;

 if (!dbus_watch_get_enabled(watch))
  return TRUE;

 flags = dbus_watch_get_flags(watch);
 fd = dbus_watch_get_unix_fd(watch);

 eloop_register_sock(fd, EVENT_TYPE_EXCEPTION, process_watch_exception,
       priv, watch);

 if (flags & DBUS_WATCH_READABLE) {
  eloop_register_sock(fd, EVENT_TYPE_READ, process_watch_read,
        priv, watch);
 }
 if (flags & DBUS_WATCH_WRITABLE) {
  eloop_register_sock(fd, EVENT_TYPE_WRITE, process_watch_write,
        priv, watch);
 }

 dbus_watch_set_data(watch, priv, ((void*)0));

 return TRUE;
}
