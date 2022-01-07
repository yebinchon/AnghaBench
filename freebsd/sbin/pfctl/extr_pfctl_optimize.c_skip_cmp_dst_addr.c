
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int * addr32; } ;
struct TYPE_7__ {TYPE_5__ mask; TYPE_5__ addr; } ;
struct TYPE_8__ {int tblname; TYPE_1__ a; int ifname; } ;
struct TYPE_9__ {int type; TYPE_2__ v; int iflags; } ;
struct TYPE_10__ {scalar_t__ neg; TYPE_3__ addr; } ;
struct pf_rule {TYPE_4__ dst; } ;







 int memcmp (TYPE_5__*,TYPE_5__*,int) ;
 int strcmp (int ,int ) ;

int
skip_cmp_dst_addr(struct pf_rule *a, struct pf_rule *b)
{
 if (a->dst.neg != b->dst.neg ||
     a->dst.addr.type != b->dst.addr.type)
  return (1);





 switch (a->dst.addr.type) {
 case 132:
  if (memcmp(&a->dst.addr.v.a.addr, &b->dst.addr.v.a.addr,
      sizeof(a->dst.addr.v.a.addr)) ||
      memcmp(&a->dst.addr.v.a.mask, &b->dst.addr.v.a.mask,
      sizeof(a->dst.addr.v.a.mask)) ||
      (a->dst.addr.v.a.addr.addr32[0] == 0 &&
      a->dst.addr.v.a.addr.addr32[1] == 0 &&
      a->dst.addr.v.a.addr.addr32[2] == 0 &&
      a->dst.addr.v.a.addr.addr32[3] == 0))
   return (1);
  return (0);
 case 131:
  if (strcmp(a->dst.addr.v.ifname, b->dst.addr.v.ifname) != 0 ||
      a->dst.addr.iflags != b->dst.addr.iflags ||
      memcmp(&a->dst.addr.v.a.mask, &b->dst.addr.v.a.mask,
      sizeof(a->dst.addr.v.a.mask)))
   return (1);
  return (0);
 case 130:
 case 128:
  return (0);
 case 129:
  return (strcmp(a->dst.addr.v.tblname, b->dst.addr.v.tblname));
 }
 return (1);
}
