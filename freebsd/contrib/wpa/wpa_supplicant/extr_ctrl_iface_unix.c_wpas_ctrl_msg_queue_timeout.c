
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* global; struct ctrl_iface_priv* ctrl_iface; } ;
struct ctrl_iface_priv {int sock; int msg_queue; } ;
struct ctrl_iface_global_priv {int sock; int msg_queue; } ;
struct TYPE_2__ {struct ctrl_iface_global_priv* ctrl_iface; } ;


 int MSG_MSGDUMP ;
 int dl_list_empty (int *) ;
 int eloop_register_timeout (int ,int,void (*) (void*,void*),struct wpa_supplicant*,int *) ;
 int wpa_printf (int ,char*,int,int) ;
 int wpas_ctrl_msg_send_pending_global (TYPE_1__*) ;
 int wpas_ctrl_msg_send_pending_iface (struct wpa_supplicant*) ;

__attribute__((used)) static void wpas_ctrl_msg_queue_timeout(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;
 struct ctrl_iface_priv *priv;
 struct ctrl_iface_global_priv *gpriv;
 int sock = -1, gsock = -1;

 wpas_ctrl_msg_send_pending_global(wpa_s->global);
 wpas_ctrl_msg_send_pending_iface(wpa_s);

 priv = wpa_s->ctrl_iface;
 if (priv && !dl_list_empty(&priv->msg_queue))
  sock = priv->sock;

 gpriv = wpa_s->global->ctrl_iface;
 if (gpriv && !dl_list_empty(&gpriv->msg_queue))
  gsock = gpriv->sock;

 if (sock > -1 || gsock > -1) {

  wpa_printf(MSG_MSGDUMP,
      "CTRL: Had to throttle pending event message transmission for (sock %d gsock %d)",
      sock, gsock);
  eloop_register_timeout(0, 20000, wpas_ctrl_msg_queue_timeout,
           wpa_s, ((void*)0));
 }
}
