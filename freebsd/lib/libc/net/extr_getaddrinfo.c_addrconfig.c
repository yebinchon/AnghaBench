
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct ifaddrs {int ifa_flags; int ifa_name; TYPE_2__* ifa_addr; struct ifaddrs* ifa_next; } ;
struct addrinfo {int ai_family; } ;
struct TYPE_4__ {int sa_family; } ;





 int IFF_UP ;
 int IFT_LOOP ;
 int IN6_IS_ADDR_LINKLOCAL (int *) ;
 int IN6_IS_ADDR_LOOPBACK (int *) ;
 int INADDR_LOOPBACK ;
 int freeifaddrs (struct ifaddrs*) ;
 scalar_t__ getifaddrs (struct ifaddrs**) ;
 int htonl (int ) ;
 int is_ifdisabled (int ) ;

__attribute__((used)) static int
addrconfig(struct addrinfo *pai)
{
 struct ifaddrs *ifaddrs, *ifa;
 struct sockaddr_in *sin;



 int seen_inet = 0, seen_inet6 = 0;

 if (getifaddrs(&ifaddrs) != 0)
  return (0);

 for (ifa = ifaddrs; ifa != ((void*)0); ifa = ifa->ifa_next) {
  if (ifa->ifa_addr == ((void*)0) || (ifa->ifa_flags & IFF_UP) == 0)
   continue;
  switch (ifa->ifa_addr->sa_family) {
  case 130:
   if (seen_inet)
    continue;
   sin = (struct sockaddr_in *)(ifa->ifa_addr);
   if (htonl(sin->sin_addr.s_addr) == INADDR_LOOPBACK)
    continue;
   seen_inet = 1;
   break;
  }
 }
 freeifaddrs(ifaddrs);

 switch(pai->ai_family) {
 case 129:
  return (seen_inet6);
 case 130:
  return (seen_inet);
 case 128:
  if (seen_inet == seen_inet6)
   return (seen_inet);
  pai->ai_family = seen_inet ? 130 : 129;
  return (1);
 }
 return (1);
}
