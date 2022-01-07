
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long double frexp (double,int*) ;

long double
frexpl(long double x, int *exp)
{
  return frexp((double) x, exp);
}
