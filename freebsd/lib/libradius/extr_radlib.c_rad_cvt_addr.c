
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;


 int memcpy (int *,void const*,int) ;

struct in_addr
rad_cvt_addr(const void *data)
{
 struct in_addr value;

 memcpy(&value.s_addr, data, sizeof value.s_addr);
 return value;
}
