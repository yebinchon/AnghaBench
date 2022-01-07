
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DBusWatch ;


 int add_watch (int *,void*) ;
 scalar_t__ dbus_watch_get_enabled (int *) ;
 int remove_watch (int *,void*) ;

__attribute__((used)) static void watch_toggled(DBusWatch *watch, void *data)
{
 if (dbus_watch_get_enabled(watch))
  add_watch(watch, data);
 else
  remove_watch(watch, data);
}
