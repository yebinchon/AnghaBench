
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int8_t ;
struct pf_addr {int* addr32; } ;
struct TYPE_4__ {struct pf_addr addr; struct pf_addr mask; } ;
struct TYPE_5__ {TYPE_1__ a; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_2__ v; } ;
struct node_host {TYPE_3__ addr; } ;


 scalar_t__ PF_ADDR_ADDRMASK ;
 int htonl (int) ;
 int memset (struct pf_addr*,int ,int) ;

void
set_ipmask(struct node_host *h, u_int8_t b)
{
 struct pf_addr *m, *n;
 int i, j = 0;

 m = &h->addr.v.a.mask;
 memset(m, 0, sizeof(*m));

 while (b >= 32) {
  m->addr32[j++] = 0xffffffff;
  b -= 32;
 }
 for (i = 31; i > 31-b; --i)
  m->addr32[j] |= (1 << i);
 if (b)
  m->addr32[j] = htonl(m->addr32[j]);


 n = &h->addr.v.a.addr;
 if (h->addr.type == PF_ADDR_ADDRMASK)
  for (i = 0; i < 4; i++)
   n->addr32[i] = n->addr32[i] & m->addr32[i];
}
