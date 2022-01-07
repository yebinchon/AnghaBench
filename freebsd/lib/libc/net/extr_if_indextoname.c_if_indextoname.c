
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_dl {int dummy; } ;
struct ifaddrs {int ifa_name; TYPE_1__* ifa_addr; struct ifaddrs* ifa_next; } ;
struct TYPE_2__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_LINK ;
 int ENXIO ;
 int IFNAMSIZ ;
 unsigned int LLINDEX (struct sockaddr_dl*) ;
 int errno ;
 int freeifaddrs (struct ifaddrs*) ;
 scalar_t__ getifaddrs (struct ifaddrs**) ;
 int strncpy (char*,int ,int ) ;

char *
if_indextoname(unsigned int ifindex, char *ifname)
{
 struct ifaddrs *ifaddrs, *ifa;
 int error = 0;

 if (getifaddrs(&ifaddrs) < 0)
  return(((void*)0));

 for (ifa = ifaddrs; ifa != ((void*)0); ifa = ifa->ifa_next) {
  if (ifa->ifa_addr &&
      ifa->ifa_addr->sa_family == AF_LINK &&
      ifindex == LLINDEX((struct sockaddr_dl*)ifa->ifa_addr))
   break;
 }

 if (ifa == ((void*)0)) {
  error = ENXIO;
  ifname = ((void*)0);
 }
 else
  strncpy(ifname, ifa->ifa_name, IFNAMSIZ);

 freeifaddrs(ifaddrs);

 errno = error;
 return(ifname);
}
