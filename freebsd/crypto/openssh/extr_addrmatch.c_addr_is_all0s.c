
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct xaddr {int af; int * addr32; TYPE_1__ v4; } ;





__attribute__((used)) static int
addr_is_all0s(const struct xaddr *a)
{
 int i;

 switch (a->af) {
 case 129:
  return (a->v4.s_addr == 0 ? 0 : -1);
 case 128:;
  for (i = 0; i < 4; i++)
   if (a->addr32[i] != 0)
    return (-1);
  return (0);
 default:
  return (-1);
 }
}
