
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpas_dbus_priv {int con; } ;


 scalar_t__ DBUS_DISPATCH_DATA_REMAINS ;
 int SIGPOLL ;
 int dbus_connection_dispatch (int ) ;
 scalar_t__ dbus_connection_get_dispatch_status (int ) ;
 int dbus_connection_ref (int ) ;
 int dbus_connection_unref (int ) ;

__attribute__((used)) static void process_wakeup_main(int sig, void *signal_ctx)
{
 struct wpas_dbus_priv *priv = signal_ctx;

 if (sig != SIGPOLL || !priv->con)
  return;

 if (dbus_connection_get_dispatch_status(priv->con) !=
     DBUS_DISPATCH_DATA_REMAINS)
  return;


 dbus_connection_ref(priv->con);
 dbus_connection_dispatch(priv->con);
 dbus_connection_unref(priv->con);
}
