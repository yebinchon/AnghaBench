
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctrl_iface_priv {int sock; scalar_t__ ctrl_dst; } ;


 int MSG_DEBUG ;
 int close (int) ;
 int eloop_unregister_read_sock (int) ;
 int os_free (struct ctrl_iface_priv*) ;
 int os_sleep (int ,int) ;
 int wpa_printf (int ,char*) ;
 int wpas_ctrl_iface_free_dst (scalar_t__) ;

void wpa_supplicant_ctrl_iface_deinit(struct ctrl_iface_priv *priv)
{
 if (priv->sock > -1) {
  eloop_unregister_read_sock(priv->sock);
  if (priv->ctrl_dst) {





   wpa_printf(MSG_DEBUG, "CTRL_IFACE wait for attached "
       "monitors to receive messages");
   os_sleep(0, 100000);
  }
  close(priv->sock);
  priv->sock = -1;
 }

 wpas_ctrl_iface_free_dst(priv->ctrl_dst);
 os_free(priv);
}
