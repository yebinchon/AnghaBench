
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int flags; int length; scalar_t__ pointer; } ;
struct TYPE_4__ {TYPE_1__ essid; } ;
struct iwreq {TYPE_2__ u; int ifr_name; } ;
struct hostap_driver_data {int ioctl_sock; int iface; } ;
typedef int iwr ;
typedef scalar_t__ caddr_t ;


 int IFNAMSIZ ;
 int MSG_ERROR ;
 int SIOCSIWESSID ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct iwreq*) ;
 int memset (struct iwreq*,int ,int) ;
 int os_strlcpy (int ,int ,int ) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int,int ) ;

__attribute__((used)) static int hostap_set_ssid(void *priv, const u8 *buf, int len)
{
 struct hostap_driver_data *drv = priv;
 struct iwreq iwr;

 memset(&iwr, 0, sizeof(iwr));
 os_strlcpy(iwr.ifr_name, drv->iface, IFNAMSIZ);
 iwr.u.essid.flags = 1;
 iwr.u.essid.pointer = (caddr_t) buf;
 iwr.u.essid.length = len + 1;

 if (ioctl(drv->ioctl_sock, SIOCSIWESSID, &iwr) < 0) {
  wpa_printf(MSG_ERROR, "ioctl[SIOCSIWESSID,len=%d]: %s",
      len, strerror(errno));
  return -1;
 }

 return 0;
}
