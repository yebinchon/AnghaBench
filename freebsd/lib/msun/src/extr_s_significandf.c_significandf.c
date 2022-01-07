
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float __ieee754_scalbf (float,float) ;
 scalar_t__ ilogbf (float) ;

float
significandf(float x)
{
 return __ieee754_scalbf(x,(float) -ilogbf(x));
}
