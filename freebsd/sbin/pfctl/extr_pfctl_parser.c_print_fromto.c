
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int8_t ;
struct TYPE_4__ {int mask; int addr; } ;
struct TYPE_5__ {TYPE_1__ a; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_2__ v; } ;
struct pf_rule_addr {int * port; scalar_t__ port_op; TYPE_3__ addr; scalar_t__ neg; } ;
typedef int sa_family_t ;
typedef scalar_t__ pf_osfp_t ;
typedef int buf ;


 int AF_INET6 ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ PF_ADDR_ADDRMASK ;
 scalar_t__ PF_AZERO (int *,int ) ;
 scalar_t__ PF_OSFP_ANY ;
 int PF_OSFP_LEN ;
 char* pfctl_lookup_fingerprint (scalar_t__,char*,int) ;
 int print_addr (TYPE_3__*,int ,int) ;
 int print_port (scalar_t__,int ,int ,char*,int) ;
 int printf (char*,...) ;

void
print_fromto(struct pf_rule_addr *src, pf_osfp_t osfp, struct pf_rule_addr *dst,
    sa_family_t af, u_int8_t proto, int verbose, int numeric)
{
 char buf[PF_OSFP_LEN*3];
 if (src->addr.type == PF_ADDR_ADDRMASK &&
     dst->addr.type == PF_ADDR_ADDRMASK &&
     PF_AZERO(&src->addr.v.a.addr, AF_INET6) &&
     PF_AZERO(&src->addr.v.a.mask, AF_INET6) &&
     PF_AZERO(&dst->addr.v.a.addr, AF_INET6) &&
     PF_AZERO(&dst->addr.v.a.mask, AF_INET6) &&
     !src->neg && !dst->neg &&
     !src->port_op && !dst->port_op &&
     osfp == PF_OSFP_ANY)
  printf(" all");
 else {
  printf(" from ");
  if (src->neg)
   printf("! ");
  print_addr(&src->addr, af, verbose);
  if (src->port_op)
   print_port(src->port_op, src->port[0],
       src->port[1],
       proto == IPPROTO_TCP ? "tcp" : "udp",
       numeric);
  if (osfp != PF_OSFP_ANY)
   printf(" os \"%s\"", pfctl_lookup_fingerprint(osfp, buf,
       sizeof(buf)));

  printf(" to ");
  if (dst->neg)
   printf("! ");
  print_addr(&dst->addr, af, verbose);
  if (dst->port_op)
   print_port(dst->port_op, dst->port[0],
       dst->port[1],
       proto == IPPROTO_TCP ? "tcp" : "udp",
       numeric);
 }
}
