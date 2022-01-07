
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpas_dbus_priv {int con; } ;


 int dispatch_initial_dbus_messages ;
 int eloop_register_timeout (int ,int,int ,int ,int *) ;
 int integrate_with_eloop (struct wpas_dbus_priv*) ;

__attribute__((used)) static int wpas_dbus_init_common_finish(struct wpas_dbus_priv *priv)
{

 integrate_with_eloop(priv);
 eloop_register_timeout(0, 50, dispatch_initial_dbus_messages,
          priv->con, ((void*)0));

 return 0;
}
