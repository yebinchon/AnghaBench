
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double __ieee754_lgamma_r (double,int*) ;

double
__ieee754_gamma_r(double x, int *signgamp)
{
 return __ieee754_lgamma_r(x,signgamp);
}
