
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * __u6_addr32; } ;
struct in6_addr {TYPE_1__ __u6_addr; } ;


 int ffs (int ) ;
 int ntohl (int ) ;

__attribute__((used)) static int
inet6_prefixlen(struct in6_addr *addr)
{
 int prefixlen = 0;
 int i;

 for (i = 0; i < 4; i++) {
  int x = ffs(ntohl(addr->__u6_addr.__u6_addr32[i]));
  prefixlen += x == 0 ? 0 : 33 - x;
  if (x != 1) {
   break;
  }
 }
 return (prefixlen);
}
