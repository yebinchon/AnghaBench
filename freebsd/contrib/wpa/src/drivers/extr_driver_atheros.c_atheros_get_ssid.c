
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int length; scalar_t__ pointer; } ;
struct TYPE_4__ {TYPE_1__ essid; } ;
struct iwreq {TYPE_2__ u; int ifr_name; } ;
struct atheros_driver_data {int ioctl_sock; int iface; } ;
typedef int iwr ;
typedef scalar_t__ caddr_t ;


 int IFNAMSIZ ;
 int IW_ESSID_MAX_SIZE ;
 int MSG_ERROR ;
 int SIOCGIWESSID ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct iwreq*) ;
 int os_memset (struct iwreq*,int ,int) ;
 int os_strlcpy (int ,int ,int ) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static int
atheros_get_ssid(void *priv, u8 *buf, int len)
{
 struct atheros_driver_data *drv = priv;
 struct iwreq iwr;
 int ret = 0;

 os_memset(&iwr, 0, sizeof(iwr));
 os_strlcpy(iwr.ifr_name, drv->iface, IFNAMSIZ);
 iwr.u.essid.pointer = (caddr_t) buf;
 iwr.u.essid.length = (len > IW_ESSID_MAX_SIZE) ?
  IW_ESSID_MAX_SIZE : len;

 if (ioctl(drv->ioctl_sock, SIOCGIWESSID, &iwr) < 0) {
  wpa_printf(MSG_ERROR, "ioctl[SIOCGIWESSID]: %s",
      strerror(errno));
  ret = -1;
 } else
  ret = iwr.u.essid.length;

 return ret;
}
