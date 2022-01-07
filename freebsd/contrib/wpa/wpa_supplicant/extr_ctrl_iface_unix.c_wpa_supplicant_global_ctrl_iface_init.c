
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ctrl_interface; } ;
struct wpa_global {TYPE_1__ params; } ;
struct ctrl_iface_global_priv {int sock; struct wpa_global* global; int msg_queue; int ctrl_dst; } ;


 int dl_list_init (int *) ;
 int os_free (struct ctrl_iface_global_priv*) ;
 struct ctrl_iface_global_priv* os_zalloc (int) ;
 int wpa_msg_register_cb (int ) ;
 int wpa_supplicant_ctrl_iface_msg_cb ;
 scalar_t__ wpas_global_ctrl_iface_open_sock (struct wpa_global*,struct ctrl_iface_global_priv*) ;

struct ctrl_iface_global_priv *
wpa_supplicant_global_ctrl_iface_init(struct wpa_global *global)
{
 struct ctrl_iface_global_priv *priv;

 priv = os_zalloc(sizeof(*priv));
 if (priv == ((void*)0))
  return ((void*)0);
 dl_list_init(&priv->ctrl_dst);
 dl_list_init(&priv->msg_queue);
 priv->global = global;
 priv->sock = -1;

 if (global->params.ctrl_interface == ((void*)0))
  return priv;

 if (wpas_global_ctrl_iface_open_sock(global, priv) < 0) {
  os_free(priv);
  return ((void*)0);
 }

 wpa_msg_register_cb(wpa_supplicant_ctrl_iface_msg_cb);

 return priv;
}
