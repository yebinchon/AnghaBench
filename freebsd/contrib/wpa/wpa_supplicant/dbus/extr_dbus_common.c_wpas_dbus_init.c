
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpas_dbus_priv {struct wpa_global* global; } ;
struct wpa_global {int dummy; } ;


 struct wpas_dbus_priv* os_zalloc (int) ;
 scalar_t__ wpas_dbus_ctrl_iface_init (struct wpas_dbus_priv*) ;
 int wpas_dbus_deinit (struct wpas_dbus_priv*) ;
 scalar_t__ wpas_dbus_init_common (struct wpas_dbus_priv*) ;
 scalar_t__ wpas_dbus_init_common_finish (struct wpas_dbus_priv*) ;

struct wpas_dbus_priv * wpas_dbus_init(struct wpa_global *global)
{
 struct wpas_dbus_priv *priv;

 priv = os_zalloc(sizeof(*priv));
 if (priv == ((void*)0))
  return ((void*)0);
 priv->global = global;

 if (wpas_dbus_init_common(priv) < 0 ||



     wpas_dbus_init_common_finish(priv) < 0) {
  wpas_dbus_deinit(priv);
  return ((void*)0);
 }

 return priv;
}
