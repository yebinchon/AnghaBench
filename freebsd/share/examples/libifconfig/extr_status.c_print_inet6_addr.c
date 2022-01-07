
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {scalar_t__ tv_sec; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {scalar_t__ ia6t_expire; scalar_t__ ia6t_preferred; } ;
struct ifconfig_inet6_addr {int prefixlen; int flags; int vhid; TYPE_2__ lifetime; TYPE_1__* sin6; int * dstin6; } ;
struct ifaddrs {int ifa_name; } ;
typedef int ifconfig_handle_t ;
typedef int addr_buf ;
struct TYPE_3__ {int sin6_scope_id; int sin6_addr; int sin6_len; } ;


 int AF_INET6 ;
 int CLOCK_MONOTONIC_FAST ;
 int IN6_IFF_ANYCAST ;
 int IN6_IFF_AUTOCONF ;
 int IN6_IFF_DEPRECATED ;
 int IN6_IFF_DETACHED ;
 int IN6_IFF_DUPLICATED ;
 int IN6_IFF_PREFER_SOURCE ;
 int IN6_IFF_TEMPORARY ;
 int IN6_IFF_TENTATIVE ;
 int MAX (long,scalar_t__) ;
 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 int clock_gettime (int ,struct timespec*) ;
 int err (int,char*) ;
 scalar_t__ getnameinfo (struct sockaddr*,int ,char*,int,int *,int ,int ) ;
 scalar_t__ ifconfig_inet6_get_addrinfo (int *,int ,struct ifaddrs*,struct ifconfig_inet6_addr*) ;
 int inet_ntop (int ,int *,char*,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_inet6_addr(ifconfig_handle_t *lifh, struct ifaddrs *ifa)
{
 struct ifconfig_inet6_addr addr;
 char addr_buf[NI_MAXHOST];
 struct timespec now;


 if (ifconfig_inet6_get_addrinfo(lifh, ifa->ifa_name, ifa, &addr) != 0) {
  err(1, "ifconfig_inet6_get_addrinfo");
 }
 if (0 != getnameinfo((struct sockaddr *)addr.sin6, addr.sin6->sin6_len,
     addr_buf, sizeof(addr_buf), ((void*)0), 0, NI_NUMERICHOST)) {
  inet_ntop(AF_INET6, &addr.sin6->sin6_addr, addr_buf,
      sizeof(addr_buf));
 }
 printf("\tinet6 %s", addr_buf);

 if (addr.dstin6) {
  inet_ntop(AF_INET6, addr.dstin6, addr_buf, sizeof(addr_buf));
  printf(" --> %s", addr_buf);
 }


 printf(" prefixlen %d ", addr.prefixlen);


 if (addr.sin6->sin6_scope_id) {
  printf("scopeid 0x%x ", addr.sin6->sin6_scope_id);
 }


 if ((addr.flags & IN6_IFF_ANYCAST) != 0) {
  printf("anycast ");
 }
 if ((addr.flags & IN6_IFF_TENTATIVE) != 0) {
  printf("tentative ");
 }
 if ((addr.flags & IN6_IFF_DUPLICATED) != 0) {
  printf("duplicated ");
 }
 if ((addr.flags & IN6_IFF_DETACHED) != 0) {
  printf("detached ");
 }
 if ((addr.flags & IN6_IFF_DEPRECATED) != 0) {
  printf("deprecated ");
 }
 if ((addr.flags & IN6_IFF_AUTOCONF) != 0) {
  printf("autoconf ");
 }
 if ((addr.flags & IN6_IFF_TEMPORARY) != 0) {
  printf("temporary ");
 }
 if ((addr.flags & IN6_IFF_PREFER_SOURCE) != 0) {
  printf("prefer_source ");
 }


 clock_gettime(CLOCK_MONOTONIC_FAST, &now);
 if (addr.lifetime.ia6t_preferred || addr.lifetime.ia6t_expire) {
  printf("pltime ");
  if (addr.lifetime.ia6t_preferred) {
   printf("%ld ", MAX(0l,
       addr.lifetime.ia6t_preferred - now.tv_sec));
  } else {
   printf("infty ");
  }

  printf("vltime ");
  if (addr.lifetime.ia6t_expire) {
   printf("%ld ", MAX(0l,
       addr.lifetime.ia6t_expire - now.tv_sec));
  } else {
   printf("infty ");
  }
 }


 if (addr.vhid != 0) {
  printf("vhid %d ", addr.vhid);
 }
 printf("\n");
}
