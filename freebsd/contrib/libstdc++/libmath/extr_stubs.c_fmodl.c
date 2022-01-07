
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long double fmod (double,double) ;

long double
fmodl(long double x, long double y)
{
  return fmod((double) x, (double) y);
}
