
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rad_handle {int dummy; } ;
struct in_addr {int s_addr; } ;


 int rad_put_vendor_attr (struct rad_handle*,int,int,int *,int) ;

int
rad_put_vendor_addr(struct rad_handle *h, int vendor, int type,
    struct in_addr addr)
{
 return (rad_put_vendor_attr(h, vendor, type, &addr.s_addr,
     sizeof addr.s_addr));
}
