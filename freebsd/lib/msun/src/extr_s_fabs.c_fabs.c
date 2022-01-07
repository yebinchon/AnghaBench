
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int GET_HIGH_WORD (int,double) ;
 int SET_HIGH_WORD (double,int) ;

double
fabs(double x)
{
 u_int32_t high;
 GET_HIGH_WORD(high,x);
 SET_HIGH_WORD(x,high&0x7fffffff);
        return x;
}
