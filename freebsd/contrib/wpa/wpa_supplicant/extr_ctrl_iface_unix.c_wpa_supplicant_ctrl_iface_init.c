
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wpa_supplicant {TYPE_3__* conf; TYPE_2__* global; } ;
struct ctrl_iface_priv {int sock; struct wpa_supplicant* wpa_s; int msg_queue; int ctrl_dst; } ;
struct TYPE_6__ {int * ctrl_interface; } ;
struct TYPE_4__ {char* ctrl_interface; } ;
struct TYPE_5__ {TYPE_1__ params; } ;


 int MSG_ERROR ;
 int dl_list_init (int *) ;
 int os_free (struct ctrl_iface_priv*) ;
 char* os_strchr (char*,char) ;
 scalar_t__ os_strcmp (char*,int *) ;
 scalar_t__ os_strncmp (char*,char*,int) ;
 struct ctrl_iface_priv* os_zalloc (int) ;
 int wpa_printf (int ,char*,char*,int *) ;
 scalar_t__ wpas_ctrl_iface_open_sock (struct wpa_supplicant*,struct ctrl_iface_priv*) ;

struct ctrl_iface_priv *
wpa_supplicant_ctrl_iface_init(struct wpa_supplicant *wpa_s)
{
 struct ctrl_iface_priv *priv;

 priv = os_zalloc(sizeof(*priv));
 if (priv == ((void*)0))
  return ((void*)0);
 dl_list_init(&priv->ctrl_dst);
 dl_list_init(&priv->msg_queue);
 priv->wpa_s = wpa_s;
 priv->sock = -1;

 if (wpa_s->conf->ctrl_interface == ((void*)0))
  return priv;
 if (wpas_ctrl_iface_open_sock(wpa_s, priv) < 0) {
  os_free(priv);
  return ((void*)0);
 }

 return priv;
}
