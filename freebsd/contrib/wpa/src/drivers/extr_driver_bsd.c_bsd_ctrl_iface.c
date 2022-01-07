
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifreq {int ifr_flags; int ifr_name; } ;
struct bsd_driver_data {int flags; TYPE_1__* global; int ifname; } ;
typedef int ifr ;
struct TYPE_2__ {int sock; } ;


 int IFF_UP ;
 int MSG_ERROR ;
 int SIOCGIFFLAGS ;
 int SIOCSIFFLAGS ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct ifreq*) ;
 int os_memset (struct ifreq*,int ,int) ;
 int os_strlcpy (int ,int ,int) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static int
bsd_ctrl_iface(void *priv, int enable)
{
 struct bsd_driver_data *drv = priv;
 struct ifreq ifr;

 os_memset(&ifr, 0, sizeof(ifr));
 os_strlcpy(ifr.ifr_name, drv->ifname, sizeof(ifr.ifr_name));

 if (ioctl(drv->global->sock, SIOCGIFFLAGS, &ifr) < 0) {
  wpa_printf(MSG_ERROR, "ioctl[SIOCGIFFLAGS]: %s",
      strerror(errno));
  return -1;
 }
 drv->flags = ifr.ifr_flags;

 if (enable) {
  if (ifr.ifr_flags & IFF_UP)
   return 0;
  ifr.ifr_flags |= IFF_UP;
 } else {
  if (!(ifr.ifr_flags & IFF_UP))
   return 0;
  ifr.ifr_flags &= ~IFF_UP;
 }

 if (ioctl(drv->global->sock, SIOCSIFFLAGS, &ifr) < 0) {
  wpa_printf(MSG_ERROR, "ioctl[SIOCSIFFLAGS]: %s",
      strerror(errno));
  return -1;
 }

 drv->flags = ifr.ifr_flags;
 return 0;
}
