
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct ifaddrs {int ifa_name; int * ifa_addr; struct ifaddrs* ifa_next; } ;


 int ENODEV ;
 scalar_t__ cmp_address (int *,struct sockaddr const*) ;
 int errno ;
 int freeifaddrs (struct ifaddrs*) ;
 int getifaddrs (struct ifaddrs**) ;
 int if_nametoindex (int ) ;

__attribute__((used)) static int get_ifindex(const struct sockaddr *s)
{
 struct ifaddrs *ifaddr, *ifa;
 int name2index = -ENODEV;

 if (-1 == getifaddrs(&ifaddr))
  return errno;

 for (ifa = ifaddr; ifa != ((void*)0); ifa = ifa->ifa_next) {
  if (ifa->ifa_addr == ((void*)0))
   continue;

  if (cmp_address(ifa->ifa_addr, s)) {
   name2index = if_nametoindex(ifa->ifa_name);
   break;
  }
 }

 freeifaddrs(ifaddr);

 return name2index;
}
