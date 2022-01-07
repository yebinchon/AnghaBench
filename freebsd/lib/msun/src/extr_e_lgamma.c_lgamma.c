
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double __ieee754_lgamma_r (double,int *) ;
 int signgam ;

double
__ieee754_lgamma(double x)
{
 return __ieee754_lgamma_r(x,&signgam);
}
