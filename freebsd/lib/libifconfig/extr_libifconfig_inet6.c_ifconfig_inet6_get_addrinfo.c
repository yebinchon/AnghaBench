
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_2__ {int ifru_lifetime; int ifru_flags6; } ;
struct in6_ifreq {TYPE_1__ ifr_ifru; struct sockaddr_in6 ifr_addr; int ifr_name; } ;
struct ifconfig_inet6_addr {int vhid; int lifetime; struct sockaddr_in6* sin6; int flags; int prefixlen; struct sockaddr_in6* dstin6; } ;
struct ifaddrs {int ifa_flags; scalar_t__ ifa_data; scalar_t__ ifa_netmask; scalar_t__ ifa_dstaddr; scalar_t__ ifa_addr; } ;
struct if_data {int ifi_vhid; } ;
typedef int ifconfig_handle_t ;


 int AF_INET6 ;
 int IFF_POINTOPOINT ;
 int SIOCGIFAFLAG_IN6 ;
 int SIOCGIFALIFETIME_IN6 ;
 int bzero (struct ifconfig_inet6_addr*,int) ;
 scalar_t__ ifconfig_ioctlwrap (int *,int ,int ,struct in6_ifreq*) ;
 int inet6_prefixlen (int *) ;
 int memset (int *,int ,int) ;
 int strlcpy (int ,char const*,int) ;

int
ifconfig_inet6_get_addrinfo(ifconfig_handle_t *h,
    const char *name, struct ifaddrs *ifa, struct ifconfig_inet6_addr *addr)
{
 struct sockaddr_in6 *netmask;
 struct in6_ifreq ifr6;

 bzero(addr, sizeof(*addr));


 addr->sin6 = (struct sockaddr_in6 *)ifa->ifa_addr;


 if (ifa->ifa_flags & IFF_POINTOPOINT) {
  addr->dstin6 = (struct sockaddr_in6 *)ifa->ifa_dstaddr;
 }


 netmask = (struct sockaddr_in6 *)ifa->ifa_netmask;
 addr->prefixlen = inet6_prefixlen(&netmask->sin6_addr);


 strlcpy(ifr6.ifr_name, name, sizeof(ifr6.ifr_name));
 ifr6.ifr_addr = *addr->sin6;
 if (ifconfig_ioctlwrap(h, AF_INET6, SIOCGIFAFLAG_IN6, &ifr6) < 0) {
  return (-1);
 }
 addr->flags = ifr6.ifr_ifru.ifru_flags6;


 memset(&addr->lifetime, 0, sizeof(addr->lifetime));
 ifr6.ifr_addr = *addr->sin6;
 if (ifconfig_ioctlwrap(h, AF_INET6, SIOCGIFALIFETIME_IN6, &ifr6) < 0) {
  return (-1);
 }
 addr->lifetime = ifr6.ifr_ifru.ifru_lifetime;


 if (ifa->ifa_data && ifa->ifa_data) {
  addr->vhid = ((struct if_data *)ifa->ifa_data)->ifi_vhid;
 }

 return (0);
}
