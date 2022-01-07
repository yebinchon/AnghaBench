
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double S1 ;
 double S2 ;
 double S3 ;
 double S4 ;
 double S5 ;
 double S6 ;
 double half ;

double
__kernel_sin(double x, double y, int iy)
{
 double z,r,v,w;

 z = x*x;
 w = z*z;
 r = S2+z*(S3+z*S4) + z*w*(S5+z*S6);
 v = z*x;
 if(iy==0) return x+v*(S1+z*r);
 else return x-((z*(half*y-v*r)-y)-v*S1);
}
