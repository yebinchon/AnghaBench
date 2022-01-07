
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctrl_iface_global_priv {scalar_t__ sock; int ctrl_dst; } ;


 int close (scalar_t__) ;
 int eloop_unregister_read_sock (scalar_t__) ;
 int os_free (struct ctrl_iface_global_priv*) ;
 int wpas_ctrl_iface_free_dst (int ) ;

void
wpa_supplicant_global_ctrl_iface_deinit(struct ctrl_iface_global_priv *priv)
{
 if (priv->sock >= 0) {
  eloop_unregister_read_sock(priv->sock);
  close(priv->sock);
 }

 wpas_ctrl_iface_free_dst(priv->ctrl_dst);
 os_free(priv);
}
