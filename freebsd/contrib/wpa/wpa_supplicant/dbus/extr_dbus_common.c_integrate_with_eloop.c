
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpas_dbus_priv {int con; } ;


 int MSG_ERROR ;
 int SIGPOLL ;
 int add_timeout ;
 int add_watch ;
 int dbus_connection_set_timeout_functions (int ,int ,int ,int ,struct wpas_dbus_priv*,int *) ;
 int dbus_connection_set_wakeup_main_function (int ,int ,struct wpas_dbus_priv*,int *) ;
 int dbus_connection_set_watch_functions (int ,int ,int ,int ,struct wpas_dbus_priv*,int *) ;
 scalar_t__ eloop_register_signal (int ,int ,struct wpas_dbus_priv*) ;
 int process_wakeup_main ;
 int remove_timeout ;
 int remove_watch ;
 int timeout_toggled ;
 int wakeup_main ;
 int watch_toggled ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int integrate_with_eloop(struct wpas_dbus_priv *priv)
{
 if (!dbus_connection_set_watch_functions(priv->con, add_watch,
       remove_watch, watch_toggled,
       priv, ((void*)0)) ||
     !dbus_connection_set_timeout_functions(priv->con, add_timeout,
         remove_timeout,
         timeout_toggled, priv,
         ((void*)0))) {
  wpa_printf(MSG_ERROR, "dbus: Failed to set callback functions");
  return -1;
 }

 if (eloop_register_signal(SIGPOLL, process_wakeup_main, priv))
  return -1;
 dbus_connection_set_wakeup_main_function(priv->con, wakeup_main,
       priv, ((void*)0));

 return 0;
}
