
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long double atan2 (double,double) ;

long double
atan2l(long double x, long double y)
{
  return atan2((double) x, (double) y);
}
