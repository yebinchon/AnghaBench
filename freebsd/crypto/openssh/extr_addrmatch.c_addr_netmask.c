
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {void* s_addr; } ;
struct xaddr {int af; int* addr32; TYPE_1__ v4; } ;




 void* htonl (int) ;
 scalar_t__ masklen_valid (int,int) ;
 int memset (struct xaddr*,char,int) ;

__attribute__((used)) static int
addr_netmask(int af, u_int l, struct xaddr *n)
{
 int i;

 if (masklen_valid(af, l) != 0 || n == ((void*)0))
  return -1;

 memset(n, '\0', sizeof(*n));
 switch (af) {
 case 129:
  n->af = 129;
  if (l == 0)
   return 0;
  n->v4.s_addr = htonl((0xffffffff << (32 - l)) & 0xffffffff);
  return 0;
 case 128:
  n->af = 128;
  for (i = 0; i < 4 && l >= 32; i++, l -= 32)
   n->addr32[i] = 0xffffffffU;
  if (i < 4 && l != 0)
   n->addr32[i] = htonl((0xffffffff << (32 - l)) &
       0xffffffff);
  return 0;
 default:
  return -1;
 }
}
