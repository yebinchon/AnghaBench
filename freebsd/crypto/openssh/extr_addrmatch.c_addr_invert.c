
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct xaddr {int af; int * addr32; TYPE_1__ v4; } ;





__attribute__((used)) static int
addr_invert(struct xaddr *n)
{
 int i;

 if (n == ((void*)0))
  return (-1);

 switch (n->af) {
 case 129:
  n->v4.s_addr = ~n->v4.s_addr;
  return (0);
 case 128:
  for (i = 0; i < 4; i++)
   n->addr32[i] = ~n->addr32[i];
  return (0);
 default:
  return (-1);
 }
}
