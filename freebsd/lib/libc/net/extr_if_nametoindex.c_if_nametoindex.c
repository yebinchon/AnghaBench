
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_dl {int dummy; } ;
struct ifreq {unsigned int ifr_index; int ifr_name; } ;
struct ifaddrs {TYPE_1__* ifa_addr; int ifa_name; struct ifaddrs* ifa_next; } ;
typedef int ifr ;
struct TYPE_2__ {scalar_t__ sa_family; } ;


 int AF_INET ;
 scalar_t__ AF_LINK ;
 int ENXIO ;
 unsigned int LLINDEX (struct sockaddr_dl*) ;
 int SIOCGIFINDEX ;
 int SOCK_CLOEXEC ;
 int SOCK_DGRAM ;
 int _close (int) ;
 int _ioctl (int,int ,struct ifreq*) ;
 int _socket (int ,int,int ) ;
 int errno ;
 int freeifaddrs (struct ifaddrs*) ;
 scalar_t__ getifaddrs (struct ifaddrs**) ;
 int memset (struct ifreq*,int ,int) ;
 scalar_t__ strcmp (int ,char const*) ;
 int strlcpy (int ,char const*,int) ;

unsigned int
if_nametoindex(const char *ifname)
{
 int s;
 struct ifreq ifr;
 struct ifaddrs *ifaddrs, *ifa;
 unsigned int ni;

 s = _socket(AF_INET, SOCK_DGRAM | SOCK_CLOEXEC, 0);
 if (s != -1) {
  memset(&ifr, 0, sizeof(ifr));
  strlcpy(ifr.ifr_name, ifname, sizeof(ifr.ifr_name));
  if (_ioctl(s, SIOCGIFINDEX, &ifr) != -1) {
   _close(s);
   return (ifr.ifr_index);
  }
  _close(s);
 }

 if (getifaddrs(&ifaddrs) < 0)
  return(0);

 ni = 0;

 for (ifa = ifaddrs; ifa != ((void*)0); ifa = ifa->ifa_next) {
  if (ifa->ifa_addr &&
      ifa->ifa_addr->sa_family == AF_LINK &&
      strcmp(ifa->ifa_name, ifname) == 0) {
   ni = LLINDEX((struct sockaddr_dl*)ifa->ifa_addr);
   break;
  }
 }

 freeifaddrs(ifaddrs);
 if (!ni)
  errno = ENXIO;
 return(ni);
}
