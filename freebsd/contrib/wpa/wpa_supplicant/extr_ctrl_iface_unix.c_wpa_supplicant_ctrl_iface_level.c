
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct ctrl_iface_priv {int ctrl_dst; } ;
typedef int socklen_t ;


 int MSG_DEBUG ;
 int ctrl_iface_level (int *,struct sockaddr_storage*,int ,char*) ;
 int wpa_printf (int ,char*,char*) ;

__attribute__((used)) static int wpa_supplicant_ctrl_iface_level(struct ctrl_iface_priv *priv,
        struct sockaddr_storage *from,
        socklen_t fromlen,
        char *level)
{
 wpa_printf(MSG_DEBUG, "CTRL_IFACE LEVEL %s", level);

 return ctrl_iface_level(&priv->ctrl_dst, from, fromlen, level);
}
