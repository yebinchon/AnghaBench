
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ldexp (float,int) ;

float
ldexpf(float x, int exp)
{
  return (float) ldexp(x, exp);
}
