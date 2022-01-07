
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DBusTimeout ;


 int add_timeout (int *,void*) ;
 scalar_t__ dbus_timeout_get_enabled (int *) ;
 int remove_timeout (int *,void*) ;

__attribute__((used)) static void timeout_toggled(DBusTimeout *timeout, void *data)
{
 if (dbus_timeout_get_enabled(timeout))
  add_timeout(timeout, data);
 else
  remove_timeout(timeout, data);
}
