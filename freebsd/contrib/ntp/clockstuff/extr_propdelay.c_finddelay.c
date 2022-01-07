
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double MILE ;
 double RADPERDEG ;
 scalar_t__ debug ;
 double greatcircle (double,double,double,double) ;
 int printf (char*,int,...) ;
 double propdelay (double,double,int) ;
 double waveangle (double,double,int) ;

__attribute__((used)) static int
finddelay(
 double lat1,
 double long1,
 double lat2,
 double long2,
 double h,
 double *delay
 )
{
 double dg;
 double delta;
 int n;

 dg = greatcircle(lat1, long1, lat2, long2);
 if (debug)
     printf("great circle distance %g km %g miles\n", dg, dg/MILE);

 n = 1;
 while ((delta = waveangle(dg, h, n)) < 0.0) {
  if (debug)
      printf("tried %d hop%s, no good\n", n, n>1?"s":"");
  n++;
 }
 if (debug)
     printf("%d hop%s okay, wave angle is %g\n", n, n>1?"s":"",
     delta / RADPERDEG);

 *delay = propdelay(dg, h, n);
 return n;
}
