
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpas_dbus_priv {struct wpas_dbus_priv* con; } ;


 int * ELOOP_ALL_CTX ;
 int dbus_connection_remove_filter (struct wpas_dbus_priv*,int ,struct wpas_dbus_priv*) ;
 int dbus_connection_set_timeout_functions (struct wpas_dbus_priv*,int *,int *,int *,int *,int *) ;
 int dbus_connection_set_watch_functions (struct wpas_dbus_priv*,int *,int *,int *,int *,int *) ;
 int dbus_connection_unref (struct wpas_dbus_priv*) ;
 int disconnect_filter ;
 int dispatch_initial_dbus_messages ;
 int eloop_cancel_timeout (int ,struct wpas_dbus_priv*,int *) ;
 int os_free (struct wpas_dbus_priv*) ;
 int process_timeout ;

__attribute__((used)) static void wpas_dbus_deinit_common(struct wpas_dbus_priv *priv)
{
 if (priv->con) {
  eloop_cancel_timeout(dispatch_initial_dbus_messages,
         priv->con, ((void*)0));
  eloop_cancel_timeout(process_timeout, priv, ELOOP_ALL_CTX);

  dbus_connection_set_watch_functions(priv->con, ((void*)0), ((void*)0),
          ((void*)0), ((void*)0), ((void*)0));
  dbus_connection_set_timeout_functions(priv->con, ((void*)0), ((void*)0),
            ((void*)0), ((void*)0), ((void*)0));
  dbus_connection_remove_filter(priv->con, disconnect_filter,
           priv);

  dbus_connection_unref(priv->con);
 }

 os_free(priv);
}
