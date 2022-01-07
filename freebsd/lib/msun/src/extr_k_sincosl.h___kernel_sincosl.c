
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
 long double S1 ;
 long double S2 ;
 long double S3 ;
 long double S4 ;
 long double S5 ;
 long double S6 ;
 long double S7 ;
 long double S8 ;

__attribute__((used)) static inline void
__kernel_sincosl(long double x, long double y, int iy, long double *sn,
    long double *cs)
{
 long double hz, r, v, w, z;

 z = x * x;
 v = z * x;




 r = S2 + z * (S3 + z * (S4 + z * (S5 + z * (S6 + z * (S7 + z * S8)))));

 if (iy == 0)
  *sn = x + v * (S1 + z * r);
 else
  *sn = x - ((z * (y / 2 - v * r) - y) - v * S1);

 hz = z / 2;
 w = 1 - hz;
 r = z * (C1 + z * (C2 + z * (C3 + z * (C4 + z * (C5 + z * (C6 +
     z * C7))))));
 *cs = w + (((1 - w) - hz) + (z * r - x * y));
}
