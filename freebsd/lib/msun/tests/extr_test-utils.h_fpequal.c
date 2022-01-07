
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ copysignl (double,long double) ;
 scalar_t__ isnan (long double) ;

__attribute__((used)) static int
fpequal(long double d1, long double d2)
{

 if (d1 != d2)
  return (isnan(d1) && isnan(d2));
 return (copysignl(1.0, d1) == copysignl(1.0, d2));
}
