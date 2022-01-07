
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct rad_handle {int dummy; } ;


 int htonl (int ) ;
 int rad_put_attr (struct rad_handle*,int,int *,int) ;

int
rad_put_int(struct rad_handle *h, int type, u_int32_t value)
{
 u_int32_t nvalue;

 nvalue = htonl(value);
 return rad_put_attr(h, type, &nvalue, sizeof nvalue);
}
