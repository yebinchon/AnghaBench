
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct ifaddrs {char* ifa_name; scalar_t__ ifa_addr; struct ifaddrs* ifa_next; } ;
struct TYPE_7__ {scalar_t__ ss_family; } ;
struct TYPE_5__ {scalar_t__ s_addr; } ;
struct TYPE_6__ {TYPE_1__ sin_addr; } ;
struct TYPE_8__ {int sdl; TYPE_3__ ss; TYPE_2__ sin; } ;
typedef TYPE_4__ sockunion_t ;
typedef scalar_t__ in_addr_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_LINK ;
 int LLINDEX (int *) ;
 int assert (int) ;
 int freeifaddrs (struct ifaddrs*) ;
 scalar_t__ getifaddrs (struct ifaddrs**) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static uint32_t
__inaddr_to_index(in_addr_t ifaddr)
{
 struct ifaddrs *ifa;
 struct ifaddrs *ifaddrs;
 char *ifname;
 int ifindex;
 sockunion_t *psu;

 if (getifaddrs(&ifaddrs) < 0)
  return (0);

 ifindex = 0;
 ifname = ((void*)0);







 for (ifa = ifaddrs; ifa != ((void*)0); ifa = ifa->ifa_next) {
  psu = (sockunion_t *)ifa->ifa_addr;
  if (psu && psu->ss.ss_family == AF_INET &&
      psu->sin.sin_addr.s_addr == ifaddr) {
   ifname = ifa->ifa_name;
   break;
  }
 }
 if (ifname == ((void*)0))
  goto out;






 for (ifa = ifaddrs; ifa != ((void*)0); ifa = ifa->ifa_next) {
  psu = (sockunion_t *)ifa->ifa_addr;
  if (psu && psu->ss.ss_family == AF_LINK &&
      strcmp(ifa->ifa_name, ifname) == 0) {
   ifindex = LLINDEX(&psu->sdl);
   break;
  }
 }
 assert(ifindex != 0);

out:
 freeifaddrs(ifaddrs);
 return (ifindex);
}
