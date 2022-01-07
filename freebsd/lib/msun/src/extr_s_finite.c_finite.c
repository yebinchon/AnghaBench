
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int int32_t ;


 int GET_HIGH_WORD (int,double) ;

int finite(double x)
{
 int32_t hx;
 GET_HIGH_WORD(hx,x);
 return (int)((u_int32_t)((hx&0x7fffffff)-0x7ff00000)>>31);
}
