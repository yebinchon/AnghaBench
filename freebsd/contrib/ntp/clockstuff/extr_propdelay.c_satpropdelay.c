
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double EARTHRADIUS ;
 double LIGHTSPEED ;
 double SATHEIGHT ;
 double cos (double) ;
 int debug ;
 int printf (char*,double,double,double) ;
 double sin (double) ;
 double sqrt (double) ;

__attribute__((used)) static double
satpropdelay(
 double dg
 )
{
 double k1, k2, dist;
 double theta;
 double td;

 theta = dg / (EARTHRADIUS);
 k1 = EARTHRADIUS * sin(theta);
 k2 = SATHEIGHT - (EARTHRADIUS * cos(theta));
 if (debug >= 2)
     printf("Theta %g k1 %g k2 %g\n", theta, k1, k2);
 dist = sqrt(k1*k1 + k2*k2);
 td = dist / LIGHTSPEED;
 if (debug >= 2)
     printf("propdelay dist %g height %g time %g\n", dg, dist, td);
 return td;
}
