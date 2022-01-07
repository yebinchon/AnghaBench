
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int GET_HIGH_WORD (int,double) ;
 int SET_HIGH_WORD (double,int) ;

__attribute__((used)) static double
_copysign(double x, double y)
{
 u_int32_t hx,hy;
 GET_HIGH_WORD(hx,x);
 GET_HIGH_WORD(hy,y);
 SET_HIGH_WORD(x,(hx&0x7fffffff)|(hy&0x80000000));
 return x;
}
