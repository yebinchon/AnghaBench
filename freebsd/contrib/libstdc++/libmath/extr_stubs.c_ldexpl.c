
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long double ldexp (double,int) ;

long double
ldexpl(long double x, int exp)
{
  return ldexp((double) x, exp);
}
