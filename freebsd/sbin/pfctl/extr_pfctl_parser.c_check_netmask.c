
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pf_addr {scalar_t__* addr32; } ;
struct TYPE_4__ {struct pf_addr mask; } ;
struct TYPE_5__ {TYPE_1__ a; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_2__ v; } ;
struct node_host {TYPE_3__ addr; struct node_host* next; } ;
typedef scalar_t__ sa_family_t ;


 scalar_t__ AF_INET ;
 int AF_INET6 ;
 scalar_t__ PF_ADDR_DYNIFTL ;
 scalar_t__ PF_ADDR_TABLE ;
 int fprintf (int ,char*,int) ;
 int set_ipmask (struct node_host*,int) ;
 int stderr ;
 int unmask (struct pf_addr*,int ) ;

int
check_netmask(struct node_host *h, sa_family_t af)
{
 struct node_host *n = ((void*)0);
 struct pf_addr *m;

 for (n = h; n != ((void*)0); n = n->next) {
  if (h->addr.type == PF_ADDR_TABLE)
   continue;
  m = &h->addr.v.a.mask;

  if (af == AF_INET && h->addr.type == PF_ADDR_DYNIFTL &&
      unmask(m, AF_INET6) > 32)
   set_ipmask(n, 32);

  if (af == AF_INET &&
      (m->addr32[1] || m->addr32[2] || m->addr32[3])) {
   fprintf(stderr, "netmask %u invalid for IPv4 address\n",
       unmask(m, AF_INET6));
   return (1);
  }
 }
 return (0);
}
