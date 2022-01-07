
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float __ieee754_lgammaf_r (float,int *) ;
 int signgam ;

float
__ieee754_lgammaf(float x)
{
 return __ieee754_lgammaf_r(x,&signgam);
}
