
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ name; } ;
struct iwreq {TYPE_1__ u; int ifr_name; } ;
struct hostap_driver_data {int ioctl_sock; int iface; } ;
typedef int iwr ;


 int IFNAMSIZ ;
 int MSG_ERROR ;
 int PRISM2_IOCTL_PRISM2_PARAM ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct iwreq*) ;
 int memset (struct iwreq*,int ,int) ;
 int os_strlcpy (int ,int ,int ) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static int hostap_ioctl_prism2param(void *priv, int param, int value)
{
 struct hostap_driver_data *drv = priv;
 struct iwreq iwr;
 int *i;

 memset(&iwr, 0, sizeof(iwr));
 os_strlcpy(iwr.ifr_name, drv->iface, IFNAMSIZ);
 i = (int *) iwr.u.name;
 *i++ = param;
 *i++ = value;

 if (ioctl(drv->ioctl_sock, PRISM2_IOCTL_PRISM2_PARAM, &iwr) < 0) {
  wpa_printf(MSG_ERROR, "ioctl[PRISM2_IOCTL_PRISM2_PARAM]: %s",
      strerror(errno));
  return -1;
 }

 return 0;
}
