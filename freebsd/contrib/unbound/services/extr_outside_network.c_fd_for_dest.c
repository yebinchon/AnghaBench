
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef int to ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {int dummy; } ;
struct port_if {scalar_t__ avail_total; int inuse; int* avail_ports; TYPE_1__** out; int addrlen; struct sockaddr_storage addr; } ;
struct outside_network {scalar_t__ num_ip6; scalar_t__ num_ip4; int rnd; struct port_if* ip4_ifs; struct port_if* ip6_ifs; } ;
typedef int socklen_t ;
typedef void* in_port_t ;
struct TYPE_2__ {int number; } ;


 int AF_INET ;
 int AF_INET6 ;
 int SOCK_DGRAM ;
 int VERB_QUERY ;
 scalar_t__ addr_is_ip6 (struct sockaddr_storage*,int ) ;
 int addr_to_str (struct sockaddr_storage*,int ,char*,int) ;
 int create_udp_sock (int ,int ,struct sockaddr*,int ,int,int*,int*,int ,int ,int ,int *,int ,int,int ) ;
 scalar_t__ htons (int ) ;
 int log_err (char*) ;
 int ub_random_max (int ,scalar_t__) ;
 int verbose (int ,char*,char*) ;

__attribute__((used)) static int
fd_for_dest(struct outside_network* outnet, struct sockaddr_storage* to_addr,
 socklen_t to_addrlen)
{
 struct sockaddr_storage* addr;
 socklen_t addrlen;
 int i, try, pnum;
 struct port_if* pif;


 for(try = 0; try<1000; try++) {
  int port = 0;
  int freebind = 0;
  int noproto = 0;
  int inuse = 0;
  int fd = -1;


  if(addr_is_ip6(to_addr, to_addrlen)) {
   if(outnet->num_ip6 == 0) {
    char to[64];
    addr_to_str(to_addr, to_addrlen, to, sizeof(to));
    verbose(VERB_QUERY, "need ipv6 to send, but no ipv6 outgoing interfaces, for %s", to);
    return -1;
   }
   i = ub_random_max(outnet->rnd, outnet->num_ip6);
   pif = &outnet->ip6_ifs[i];
  } else {
   if(outnet->num_ip4 == 0) {
    char to[64];
    addr_to_str(to_addr, to_addrlen, to, sizeof(to));
    verbose(VERB_QUERY, "need ipv4 to send, but no ipv4 outgoing interfaces, for %s", to);
    return -1;
   }
   i = ub_random_max(outnet->rnd, outnet->num_ip4);
   pif = &outnet->ip4_ifs[i];
  }
  addr = &pif->addr;
  addrlen = pif->addrlen;
  pnum = ub_random_max(outnet->rnd, pif->avail_total);
  if(pnum < pif->inuse) {

   port = pif->out[pnum]->number;
  } else {

   port = pif->avail_ports[pnum - pif->inuse];
  }

  if(addr_is_ip6(to_addr, to_addrlen)) {
   struct sockaddr_in6 sa = *(struct sockaddr_in6*)addr;
   sa.sin6_port = (in_port_t)htons((uint16_t)port);
   fd = create_udp_sock(AF_INET6, SOCK_DGRAM,
    (struct sockaddr*)&sa, addrlen, 1, &inuse, &noproto,
    0, 0, 0, ((void*)0), 0, freebind, 0);
  } else {
   struct sockaddr_in* sa = (struct sockaddr_in*)addr;
   sa->sin_port = (in_port_t)htons((uint16_t)port);
   fd = create_udp_sock(AF_INET, SOCK_DGRAM,
    (struct sockaddr*)addr, addrlen, 1, &inuse, &noproto,
    0, 0, 0, ((void*)0), 0, freebind, 0);
  }
  if(fd != -1) {
   return fd;
  }
  if(!inuse) {
   return -1;
  }
 }

 log_err("cannot send probe, ports are in use");
 return -1;
}
