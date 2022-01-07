
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double __ieee754_scalb (double,double) ;
 scalar_t__ ilogb (double) ;

double
significand(double x)
{
 return __ieee754_scalb(x,(double) -ilogb(x));
}
