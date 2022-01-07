
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long double lgammal_r (long double,int *) ;
 int signgam ;

long double
lgammal(long double x)
{
 return lgammal_r(x,&signgam);
}
