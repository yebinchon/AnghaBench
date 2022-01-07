
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double EARTHRADIUS ;
 double RADPERDEG ;
 double acos (int) ;
 int cos (double) ;
 int debug ;
 int printf (char*,double,double,double,double,double) ;
 int sin (double) ;

__attribute__((used)) static double
greatcircle(
 double lat1,
 double long1,
 double lat2,
 double long2
 )
{
 double dg;
 double l1r, l2r;

 l1r = lat1 * RADPERDEG;
 l2r = lat2 * RADPERDEG;
 dg = EARTHRADIUS * acos(
  (cos(l1r) * cos(l2r) * cos((long2-long1)*RADPERDEG))
  + (sin(l1r) * sin(l2r)));
 if (debug >= 2)
     printf(
      "greatcircle lat1 %g long1 %g lat2 %g long2 %g dist %g\n",
      lat1, long1, lat2, long2, dg);
 return dg;
}
