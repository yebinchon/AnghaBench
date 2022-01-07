
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpas_dbus_priv {int dummy; } ;


 int wpas_dbus_ctrl_iface_deinit (struct wpas_dbus_priv*) ;
 int wpas_dbus_deinit_common (struct wpas_dbus_priv*) ;

void wpas_dbus_deinit(struct wpas_dbus_priv *priv)
{
 if (priv == ((void*)0))
  return;





 wpas_dbus_deinit_common(priv);
}
