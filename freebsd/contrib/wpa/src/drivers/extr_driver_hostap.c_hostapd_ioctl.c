
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct prism2_hostapd_param {int dummy; } ;
struct TYPE_3__ {int length; scalar_t__ pointer; } ;
struct TYPE_4__ {TYPE_1__ data; } ;
struct iwreq {TYPE_2__ u; int ifr_name; } ;
struct hostap_driver_data {int ioctl_sock; int iface; } ;
typedef int iwr ;
typedef scalar_t__ caddr_t ;


 int IFNAMSIZ ;
 int MSG_ERROR ;
 int PRISM2_IOCTL_HOSTAPD ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct iwreq*) ;
 int memset (struct iwreq*,int ,int) ;
 int os_strlcpy (int ,int ,int ) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static int hostapd_ioctl(void *priv, struct prism2_hostapd_param *param,
    int len)
{
 struct hostap_driver_data *drv = priv;
 struct iwreq iwr;

 memset(&iwr, 0, sizeof(iwr));
 os_strlcpy(iwr.ifr_name, drv->iface, IFNAMSIZ);
 iwr.u.data.pointer = (caddr_t) param;
 iwr.u.data.length = len;

 if (ioctl(drv->ioctl_sock, PRISM2_IOCTL_HOSTAPD, &iwr) < 0) {
  wpa_printf(MSG_ERROR, "ioctl[PRISM2_IOCTL_HOSTAPD]: %s",
      strerror(errno));
  return -1;
 }

 return 0;
}
