
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int u_char ;
struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_24__ {int s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct qual {int proto; int dir; int addr; } ;
struct in6_addr {int dummy; } ;
struct block {int dummy; } ;
struct addrinfo {scalar_t__ ai_addr; int ai_family; struct addrinfo* ai_next; } ;
typedef int mask128 ;
struct TYPE_23__ {int constant_part; } ;
struct TYPE_25__ {struct addrinfo* ai; TYPE_1__ off_linktype; int linktype; } ;
typedef TYPE_3__ compiler_state_t ;
typedef int bpf_u_int32 ;
 int IPPROTO_SCTP ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int OFFSET_NOT_SET ;
 int Q_DECNET ;



 int Q_IP ;
 int Q_IPV6 ;
 int Q_LINK ;





 int Q_SCTP ;
 int Q_TCP ;
 int Q_UDP ;

 int __pcap_nametodnaddr (char const*,unsigned short*) ;
 int abort () ;
 int bpf_error (TYPE_3__*,char*,...) ;
 int free (int *) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_ehostop (TYPE_3__*,int *,int) ;
 struct block* gen_fhostop (TYPE_3__*,int *,int) ;
 struct block* gen_gateway (TYPE_3__*,int *,struct addrinfo*,int,int) ;
 struct block* gen_host (TYPE_3__*,unsigned short,int,int,int,int) ;
 struct block* gen_host6 (TYPE_3__*,int *,struct in6_addr*,int,int,int) ;
 struct block* gen_ipfchostop (TYPE_3__*,int *,int) ;
 int gen_or (struct block*,struct block*) ;
 struct block* gen_port (TYPE_3__*,int,int,int) ;
 struct block* gen_port6 (TYPE_3__*,int,int,int) ;
 struct block* gen_portrange (TYPE_3__*,int,int,int,int) ;
 struct block* gen_portrange6 (TYPE_3__*,int,int,int,int) ;
 struct block* gen_prevlinkhdr_check (TYPE_3__*) ;
 struct block* gen_proto (TYPE_3__*,int,int,int) ;
 struct block* gen_protochain (TYPE_3__*,int,int,int) ;
 struct block* gen_thostop (TYPE_3__*,int *,int) ;
 struct block* gen_wlanhostop (TYPE_3__*,int *,int) ;
 int lookup_proto (TYPE_3__*,char const*,int) ;
 int memset (struct in6_addr*,int,int) ;
 unsigned short ntohl (int ) ;
 int * pcap_ether_hostton (char const*) ;
 struct addrinfo* pcap_nametoaddrinfo (char const*) ;
 int pcap_nametonetaddr (char const*) ;
 int pcap_nametoport (char const*,int*,int*) ;
 int pcap_nametoportrange (char const*,int*,int*,int*) ;
 int syntax (TYPE_3__*) ;

struct block *
gen_scode(compiler_state_t *cstate, const char *name, struct qual q)
{
 int proto = q.proto;
 int dir = q.dir;
 int tproto;
 u_char *eaddr;
 bpf_u_int32 mask, addr;
 struct addrinfo *res, *res0;
 struct sockaddr_in *sin4;





 struct block *b, *tmp;
 int port, real_proto;
 int port1, port2;

 switch (q.addr) {

 case 133:
  addr = pcap_nametonetaddr(name);
  if (addr == 0)
   bpf_error(cstate, "unknown network '%s'", name);

  mask = 0xffffffff;
  while (addr && (addr & 0xff000000) == 0) {
   addr <<= 8;
   mask <<= 8;
  }
  return gen_host(cstate, addr, mask, proto, dir, q.addr);

 case 136:
 case 134:
  if (proto == Q_LINK) {
   switch (cstate->linktype) {

   case 147:
   case 140:
   case 139:
    eaddr = pcap_ether_hostton(name);
    if (eaddr == ((void*)0))
     bpf_error(cstate,
         "unknown ether host '%s'", name);
    tmp = gen_prevlinkhdr_check(cstate);
    b = gen_ehostop(cstate, eaddr, dir);
    if (tmp != ((void*)0))
     gen_and(tmp, b);
    free(eaddr);
    return b;

   case 146:
    eaddr = pcap_ether_hostton(name);
    if (eaddr == ((void*)0))
     bpf_error(cstate,
         "unknown FDDI host '%s'", name);
    b = gen_fhostop(cstate, eaddr, dir);
    free(eaddr);
    return b;

   case 145:
    eaddr = pcap_ether_hostton(name);
    if (eaddr == ((void*)0))
     bpf_error(cstate,
         "unknown token ring host '%s'", name);
    b = gen_thostop(cstate, eaddr, dir);
    free(eaddr);
    return b;

   case 144:
   case 137:
   case 142:
   case 143:
   case 138:
    eaddr = pcap_ether_hostton(name);
    if (eaddr == ((void*)0))
     bpf_error(cstate,
         "unknown 802.11 host '%s'", name);
    b = gen_wlanhostop(cstate, eaddr, dir);
    free(eaddr);
    return b;

   case 141:
    eaddr = pcap_ether_hostton(name);
    if (eaddr == ((void*)0))
     bpf_error(cstate,
         "unknown Fibre Channel host '%s'", name);
    b = gen_ipfchostop(cstate, eaddr, dir);
    free(eaddr);
    return b;
   }

   bpf_error(cstate, "only ethernet/FDDI/token ring/802.11/ATM LANE/Fibre Channel supports link-level host name");
  } else if (proto == Q_DECNET) {
   unsigned short dn_addr;

   if (!__pcap_nametodnaddr(name, &dn_addr)) {



    bpf_error(cstate, "decnet name support not included, '%s' cannot be translated\n",
     name);

   }




   return (gen_host(cstate, dn_addr, 0, proto, dir, q.addr));
  } else {



   res0 = res = pcap_nametoaddrinfo(name);
   if (res == ((void*)0))
    bpf_error(cstate, "unknown host '%s'", name);
   cstate->ai = res;
   b = tmp = ((void*)0);
   tproto = proto;



   if (cstate->off_linktype.constant_part == OFFSET_NOT_SET &&
       tproto == 136) {
    tproto = Q_IP;



   }
   for (res = res0; res; res = res->ai_next) {
    switch (res->ai_family) {
    case 149:





     sin4 = (struct sockaddr_in *)
      res->ai_addr;
     tmp = gen_host(cstate, ntohl(sin4->sin_addr.s_addr),
      0xffffffff, tproto, dir, q.addr);
     break;
    default:
     continue;
    }
    if (b)
     gen_or(b, tmp);
    b = tmp;
   }
   cstate->ai = ((void*)0);
   freeaddrinfo(res0);
   if (b == ((void*)0)) {
    bpf_error(cstate, "unknown host '%s'%s", name,
        (proto == 136)
     ? ""
     : " for specified address family");
   }
   return b;
  }

 case 132:
  if (proto != 136 &&
      proto != Q_UDP && proto != Q_TCP && proto != Q_SCTP)
   bpf_error(cstate, "illegal qualifier of 'port'");
  if (pcap_nametoport(name, &port, &real_proto) == 0)
   bpf_error(cstate, "unknown port '%s'", name);
  if (proto == Q_UDP) {
   if (real_proto == IPPROTO_TCP)
    bpf_error(cstate, "port '%s' is tcp", name);
   else if (real_proto == IPPROTO_SCTP)
    bpf_error(cstate, "port '%s' is sctp", name);
   else

    real_proto = IPPROTO_UDP;
  }
  if (proto == Q_TCP) {
   if (real_proto == IPPROTO_UDP)
    bpf_error(cstate, "port '%s' is udp", name);

   else if (real_proto == IPPROTO_SCTP)
    bpf_error(cstate, "port '%s' is sctp", name);
   else

    real_proto = IPPROTO_TCP;
  }
  if (proto == Q_SCTP) {
   if (real_proto == IPPROTO_UDP)
    bpf_error(cstate, "port '%s' is udp", name);

   else if (real_proto == IPPROTO_TCP)
    bpf_error(cstate, "port '%s' is tcp", name);
   else

    real_proto = IPPROTO_SCTP;
  }
  if (port < 0)
   bpf_error(cstate, "illegal port number %d < 0", port);
  if (port > 65535)
   bpf_error(cstate, "illegal port number %d > 65535", port);
  b = gen_port(cstate, port, real_proto, dir);
  gen_or(gen_port6(cstate, port, real_proto, dir), b);
  return b;

 case 131:
  if (proto != 136 &&
      proto != Q_UDP && proto != Q_TCP && proto != Q_SCTP)
   bpf_error(cstate, "illegal qualifier of 'portrange'");
  if (pcap_nametoportrange(name, &port1, &port2, &real_proto) == 0)
   bpf_error(cstate, "unknown port in range '%s'", name);
  if (proto == Q_UDP) {
   if (real_proto == IPPROTO_TCP)
    bpf_error(cstate, "port in range '%s' is tcp", name);
   else if (real_proto == IPPROTO_SCTP)
    bpf_error(cstate, "port in range '%s' is sctp", name);
   else

    real_proto = IPPROTO_UDP;
  }
  if (proto == Q_TCP) {
   if (real_proto == IPPROTO_UDP)
    bpf_error(cstate, "port in range '%s' is udp", name);
   else if (real_proto == IPPROTO_SCTP)
    bpf_error(cstate, "port in range '%s' is sctp", name);
   else

    real_proto = IPPROTO_TCP;
  }
  if (proto == Q_SCTP) {
   if (real_proto == IPPROTO_UDP)
    bpf_error(cstate, "port in range '%s' is udp", name);
   else if (real_proto == IPPROTO_TCP)
    bpf_error(cstate, "port in range '%s' is tcp", name);
   else

    real_proto = IPPROTO_SCTP;
  }
  if (port1 < 0)
   bpf_error(cstate, "illegal port number %d < 0", port1);
  if (port1 > 65535)
   bpf_error(cstate, "illegal port number %d > 65535", port1);
  if (port2 < 0)
   bpf_error(cstate, "illegal port number %d < 0", port2);
  if (port2 > 65535)
   bpf_error(cstate, "illegal port number %d > 65535", port2);

  b = gen_portrange(cstate, port1, port2, real_proto, dir);
  gen_or(gen_portrange6(cstate, port1, port2, real_proto, dir), b);
  return b;

 case 135:

  eaddr = pcap_ether_hostton(name);
  if (eaddr == ((void*)0))
   bpf_error(cstate, "unknown ether host: %s", name);

  res = pcap_nametoaddrinfo(name);
  cstate->ai = res;
  if (res == ((void*)0))
   bpf_error(cstate, "unknown host '%s'", name);
  b = gen_gateway(cstate, eaddr, res, proto, dir);
  cstate->ai = ((void*)0);
  freeaddrinfo(res);
  if (b == ((void*)0))
   bpf_error(cstate, "unknown host '%s'", name);
  return b;




 case 130:
  real_proto = lookup_proto(cstate, name, proto);
  if (real_proto >= 0)
   return gen_proto(cstate, real_proto, proto, dir);
  else
   bpf_error(cstate, "unknown protocol: %s", name);

 case 129:
  real_proto = lookup_proto(cstate, name, proto);
  if (real_proto >= 0)
   return gen_protochain(cstate, real_proto, proto, dir);
  else
   bpf_error(cstate, "unknown protocol: %s", name);

 case 128:
  syntax(cstate);

 }
 abort();

}
