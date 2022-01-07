
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpas_dbus_priv {int dbus_new_initialized; int global; } ;
struct wpa_dbus_object_desc {int dummy; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int WPAS_DBUS_NEW_PATH ;
 int WPAS_DBUS_NEW_SERVICE ;
 int free_dbus_object_desc (struct wpa_dbus_object_desc*) ;
 struct wpa_dbus_object_desc* os_zalloc (int) ;
 int wpa_dbus_ctrl_iface_init (struct wpas_dbus_priv*,int ,int ,struct wpa_dbus_object_desc*) ;
 int wpa_dbus_ctrl_iface_props_deinit (struct wpas_dbus_priv*) ;
 int wpa_dbus_ctrl_iface_props_init (struct wpas_dbus_priv*) ;
 int wpa_printf (int ,char*,...) ;
 int wpas_dbus_global_methods ;
 int wpas_dbus_global_properties ;
 int wpas_dbus_global_signals ;
 int wpas_dbus_register (struct wpa_dbus_object_desc*,int ,int *,int ,int ,int ) ;

int wpas_dbus_ctrl_iface_init(struct wpas_dbus_priv *priv)
{
 struct wpa_dbus_object_desc *obj_desc;
 int ret;

 ret = wpa_dbus_ctrl_iface_props_init(priv);
 if (ret < 0) {
  wpa_printf(MSG_ERROR,
      "dbus: Not enough memory to init interface properties");
  return -1;
 }

 obj_desc = os_zalloc(sizeof(struct wpa_dbus_object_desc));
 if (!obj_desc) {
  wpa_printf(MSG_ERROR,
      "Not enough memory to create object description");
  goto error;
 }

 wpas_dbus_register(obj_desc, priv->global, ((void*)0),
      wpas_dbus_global_methods,
      wpas_dbus_global_properties,
      wpas_dbus_global_signals);

 wpa_printf(MSG_DEBUG, "dbus: Register D-Bus object '%s'",
     WPAS_DBUS_NEW_PATH);
 ret = wpa_dbus_ctrl_iface_init(priv, WPAS_DBUS_NEW_PATH,
           WPAS_DBUS_NEW_SERVICE,
           obj_desc);
 if (ret < 0) {
  free_dbus_object_desc(obj_desc);
  goto error;
 }

 priv->dbus_new_initialized = 1;
 return 0;

error:
 wpa_dbus_ctrl_iface_props_deinit(priv);
 return -1;
}
