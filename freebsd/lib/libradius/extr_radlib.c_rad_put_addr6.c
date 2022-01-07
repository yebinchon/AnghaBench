
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rad_handle {int dummy; } ;
struct in6_addr {int s6_addr; } ;


 int rad_put_attr (struct rad_handle*,int,int *,int) ;

int
rad_put_addr6(struct rad_handle *h, int type, struct in6_addr addr)
{

 return rad_put_attr(h, type, &addr.s6_addr, sizeof addr.s6_addr);
}
