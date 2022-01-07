
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpas_dbus_priv {int dummy; } ;
typedef int DBusTimeout ;


 int dbus_timeout_set_data (int *,int *,int *) ;
 int eloop_cancel_timeout (int ,struct wpas_dbus_priv*,int *) ;
 int process_timeout ;

__attribute__((used)) static void remove_timeout(DBusTimeout *timeout, void *data)
{
 struct wpas_dbus_priv *priv = data;

 eloop_cancel_timeout(process_timeout, priv, timeout);
 dbus_timeout_set_data(timeout, ((void*)0), ((void*)0));
}
