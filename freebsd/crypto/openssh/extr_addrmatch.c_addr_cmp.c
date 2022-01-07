
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct xaddr {int af; int scope_id; scalar_t__* addr8; TYPE_1__ v4; } ;




 int ntohl (int ) ;

__attribute__((used)) static int
addr_cmp(const struct xaddr *a, const struct xaddr *b)
{
 int i;

 if (a->af != b->af)
  return a->af == 128 ? 1 : -1;

 switch (a->af) {
 case 129:
  if (a->v4.s_addr == b->v4.s_addr)
   return 0;
  return ntohl(a->v4.s_addr) > ntohl(b->v4.s_addr) ? 1 : -1;
 case 128:
  for (i = 0; i < 16; i++)
   if (a->addr8[i] - b->addr8[i] != 0)
    return a->addr8[i] > b->addr8[i] ? 1 : -1;
  if (a->scope_id == b->scope_id)
   return 0;
  return a->scope_id > b->scope_id ? 1 : -1;
 default:
  return -1;
 }
}
