
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctrl_iface_priv {int sock; TYPE_1__* wpa_s; } ;
struct TYPE_2__ {int ifname; } ;


 int MSG_DEBUG ;
 int eloop_wait_for_read_sock (int ) ;
 int wpa_printf (int ,char*,int ) ;

void wpa_supplicant_ctrl_iface_wait(struct ctrl_iface_priv *priv)
{
 wpa_printf(MSG_DEBUG, "CTRL_IFACE - %s - wait for monitor",
     priv->wpa_s->ifname);
 eloop_wait_for_read_sock(priv->sock);
}
