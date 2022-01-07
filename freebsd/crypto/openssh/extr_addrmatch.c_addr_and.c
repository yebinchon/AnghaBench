
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct xaddr {int af; int * addr32; int scope_id; TYPE_1__ v4; } ;




 int memcpy (struct xaddr*,struct xaddr const*,int) ;

__attribute__((used)) static int
addr_and(struct xaddr *dst, const struct xaddr *a, const struct xaddr *b)
{
 int i;

 if (dst == ((void*)0) || a == ((void*)0) || b == ((void*)0) || a->af != b->af)
  return -1;

 memcpy(dst, a, sizeof(*dst));
 switch (a->af) {
 case 129:
  dst->v4.s_addr &= b->v4.s_addr;
  return 0;
 case 128:
  dst->scope_id = a->scope_id;
  for (i = 0; i < 4; i++)
   dst->addr32[i] &= b->addr32[i];
  return 0;
 default:
  return -1;
 }
}
