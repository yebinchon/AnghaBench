
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpas_dbus_priv {int con; int dbus_new_initialized; } ;


 int MSG_DEBUG ;
 int WPAS_DBUS_NEW_PATH ;
 int dbus_connection_unregister_object_path (int ,int ) ;
 int wpa_dbus_ctrl_iface_props_deinit (struct wpas_dbus_priv*) ;
 int wpa_printf (int ,char*,int ) ;

void wpas_dbus_ctrl_iface_deinit(struct wpas_dbus_priv *priv)
{
 if (!priv->dbus_new_initialized)
  return;
 wpa_printf(MSG_DEBUG, "dbus: Unregister D-Bus object '%s'",
     WPAS_DBUS_NEW_PATH);
 dbus_connection_unregister_object_path(priv->con, WPAS_DBUS_NEW_PATH);
 wpa_dbus_ctrl_iface_props_deinit(priv);
}
