
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long double C1 ;
 long double C2 ;
 long double C3 ;
 long double C4 ;
 long double C5 ;
 long double C6 ;
 long double C7 ;
 long double one ;

long double
__kernel_cosl(long double x, long double y)
{
 long double hz,z,r,w;

 z = x*x;
 r = z*(C1+z*(C2+z*(C3+z*(C4+z*(C5+z*(C6+z*C7))))));
 hz = 0.5*z;
 w = one-hz;
 return w + (((one-w)-hz) + (z*r-x*y));
}
