
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*,double) ;
 int satfinddelay (double,double,double,double,double*) ;

__attribute__((used)) static void
satdoit(
 double lat1,
 double long1,
 double lat2,
 double long2,
 double lat3,
 double long3,
 char *str
 )
{
 double up_delay,down_delay;

 satfinddelay(lat1, long1, lat2, long2, &up_delay);
 satfinddelay(lat3, long3, lat2, long2, &down_delay);

 printf("%s, delay %g seconds\n", str, up_delay + down_delay);
}
