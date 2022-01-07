
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ub_randstate {int dummy; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {scalar_t__ sin6_scope_id; scalar_t__ sin6_flowinfo; void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef void* in_port_t ;


 int AF_INET ;
 int AF_INET6 ;
 int SOCK_DGRAM ;
 scalar_t__ addr_is_ip6 (struct sockaddr_storage*,int ) ;
 int create_udp_sock (int ,int ,struct sockaddr*,int ,int,int*,int*,int ,int ,int ,int *,int ,int,int ) ;
 scalar_t__ htons (int ) ;
 int sai6_putrandom (struct sockaddr_in6*,int,struct ub_randstate*) ;

__attribute__((used)) static int
udp_sockport(struct sockaddr_storage* addr, socklen_t addrlen, int pfxlen,
 int port, int* inuse, struct ub_randstate* rnd)
{
 int fd, noproto;
 if(addr_is_ip6(addr, addrlen)) {
  int freebind = 0;
  struct sockaddr_in6 sa = *(struct sockaddr_in6*)addr;
  sa.sin6_port = (in_port_t)htons((uint16_t)port);
  sa.sin6_flowinfo = 0;
  sa.sin6_scope_id = 0;
  if(pfxlen != 0) {
   freebind = 1;
   sai6_putrandom(&sa, pfxlen, rnd);
  }
  fd = create_udp_sock(AF_INET6, SOCK_DGRAM,
   (struct sockaddr*)&sa, addrlen, 1, inuse, &noproto,
   0, 0, 0, ((void*)0), 0, freebind, 0);
 } else {
  struct sockaddr_in* sa = (struct sockaddr_in*)addr;
  sa->sin_port = (in_port_t)htons((uint16_t)port);
  fd = create_udp_sock(AF_INET, SOCK_DGRAM,
   (struct sockaddr*)addr, addrlen, 1, inuse, &noproto,
   0, 0, 0, ((void*)0), 0, 0, 0);
 }
 return fd;
}
