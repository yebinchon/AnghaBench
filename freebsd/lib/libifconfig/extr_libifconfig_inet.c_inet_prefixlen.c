
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;


 int ffs (int ) ;
 int ntohl (int ) ;

__attribute__((used)) static int
inet_prefixlen(const struct in_addr *addr)
{
 int x;

 x = ffs(ntohl(addr->s_addr));
 return (x == 0 ? 0 : 33 - x);
}
