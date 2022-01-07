
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_mtu; int ifr_name; } ;
typedef int ifr ;
typedef int ifconfig_handle_t ;


 int AF_LOCAL ;
 int SIOCSIFMTU ;
 scalar_t__ ifconfig_ioctlwrap (int *,int ,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 int strlcpy (int ,char const*,int) ;

int
ifconfig_set_mtu(ifconfig_handle_t *h, const char *name, const int mtu)
{
 struct ifreq ifr;

 memset(&ifr, 0, sizeof(ifr));
 (void)strlcpy(ifr.ifr_name, name, sizeof(ifr.ifr_name));
 ifr.ifr_mtu = mtu;

 if (ifconfig_ioctlwrap(h, AF_LOCAL, SIOCSIFMTU, &ifr) < 0) {
  return (-1);
 }

 return (0);
}
