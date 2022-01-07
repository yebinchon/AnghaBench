
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpas_dbus_priv {int dummy; } ;
typedef int dbus_bool_t ;
typedef int DBusTimeout ;


 int TRUE ;
 int dbus_timeout_get_enabled (int *) ;
 int dbus_timeout_get_interval (int *) ;
 int dbus_timeout_set_data (int *,struct wpas_dbus_priv*,int *) ;
 int eloop_register_timeout (int ,int,int ,struct wpas_dbus_priv*,int *) ;
 int process_timeout ;

__attribute__((used)) static dbus_bool_t add_timeout(DBusTimeout *timeout, void *data)
{
 struct wpas_dbus_priv *priv = data;

 if (!dbus_timeout_get_enabled(timeout))
  return TRUE;

 eloop_register_timeout(0, dbus_timeout_get_interval(timeout) * 1000,
          process_timeout, priv, timeout);

 dbus_timeout_set_data(timeout, priv, ((void*)0));

 return TRUE;
}
