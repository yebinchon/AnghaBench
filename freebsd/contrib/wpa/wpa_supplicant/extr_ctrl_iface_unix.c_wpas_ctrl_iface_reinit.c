
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct ctrl_iface_priv {int sock; scalar_t__ android_control_socket; } ;


 int close (int) ;
 int eloop_unregister_read_sock (int) ;
 int wpas_ctrl_iface_open_sock (struct wpa_supplicant*,struct ctrl_iface_priv*) ;

__attribute__((used)) static int wpas_ctrl_iface_reinit(struct wpa_supplicant *wpa_s,
      struct ctrl_iface_priv *priv)
{
 int res;

 if (priv->sock <= 0)
  return -1;
 if (priv->android_control_socket)
  return priv->sock;

 eloop_unregister_read_sock(priv->sock);
 close(priv->sock);
 priv->sock = -1;
 res = wpas_ctrl_iface_open_sock(wpa_s, priv);
 if (res < 0)
  return -1;
 return priv->sock;
}
