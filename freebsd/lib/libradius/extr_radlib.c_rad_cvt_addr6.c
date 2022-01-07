
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int s6_addr; } ;


 int memcpy (int *,void const*,int) ;

struct in6_addr
rad_cvt_addr6(const void *data)
{
 struct in6_addr value;

 memcpy(&value.s6_addr, data, sizeof value.s6_addr);
 return value;
}
