
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long double pow (double,double) ;

long double
powl(long double x, long double y)
{
  return pow((double) x, (double) y);
}
