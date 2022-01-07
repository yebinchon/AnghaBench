
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_mtu; int ifr_name; } ;
struct hostap_driver_data {int ioctl_sock; int iface; } ;
typedef int ifr ;


 int HOSTAPD_MTU ;
 int IFNAMSIZ ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int SIOCSIFMTU ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct ifreq*) ;
 scalar_t__ linux_set_iface_flags (int ,char*,int) ;
 int memset (struct ifreq*,int ,int) ;
 int os_snprintf (char*,int,char*,int ) ;
 int os_strlcpy (int ,char*,int) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int hostap_set_iface_flags(void *priv, int dev_up)
{
 struct hostap_driver_data *drv = priv;
 struct ifreq ifr;
 char ifname[IFNAMSIZ];

 if (os_snprintf(ifname, IFNAMSIZ, "%sap", drv->iface) >= IFNAMSIZ) {
  wpa_printf(MSG_ERROR, "hostap: AP interface name truncated");
  return -1;
 }
 if (linux_set_iface_flags(drv->ioctl_sock, ifname, dev_up) < 0)
  return -1;

 if (dev_up) {
  memset(&ifr, 0, sizeof(ifr));
  os_strlcpy(ifr.ifr_name, ifname, IFNAMSIZ);
  ifr.ifr_mtu = HOSTAPD_MTU;
  if (ioctl(drv->ioctl_sock, SIOCSIFMTU, &ifr) != 0) {
   wpa_printf(MSG_INFO,
       "Setting MTU failed - trying to survive with current value: ioctl[SIOCSIFMTU]: %s",
       strerror(errno));
  }
 }

 return 0;
}
