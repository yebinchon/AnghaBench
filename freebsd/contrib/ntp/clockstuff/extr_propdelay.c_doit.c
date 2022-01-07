
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int finddelay (double,double,double,double,double,double*) ;
 int printf (char*,char*,double,int,double) ;

__attribute__((used)) static void
doit(
 double lat1,
 double long1,
 double lat2,
 double long2,
 double h,
 char *str
 )
{
 int hops;
 double delay;

 hops = finddelay(lat1, long1, lat2, long2, h, &delay);
 printf("%sheight %g km, hops %d, delay %g seconds\n",
        str, h, hops, delay);
}
