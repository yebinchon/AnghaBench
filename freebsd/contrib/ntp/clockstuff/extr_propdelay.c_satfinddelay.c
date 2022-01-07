
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double greatcircle (double,double,double,double) ;
 double satpropdelay (double) ;

__attribute__((used)) static void
satfinddelay(
 double lat1,
 double long1,
 double lat2,
 double long2,
 double *delay
 )
{
 double dg;

 dg = greatcircle(lat1, long1, lat2, long2);

 *delay = satpropdelay(dg);
}
