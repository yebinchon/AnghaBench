
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_quad_t ;
typedef double quad_t ;


 double QUAD_MAX ;
 double QUAD_MIN ;

quad_t
__fixdfdi(double x)
{
 if (x < 0)
  if (x <= QUAD_MIN)
   return (QUAD_MIN);
  else
   return ((quad_t)-(u_quad_t)-x);
 else
  if (x >= QUAD_MAX)
   return (QUAD_MAX);
  else
   return ((quad_t)(u_quad_t)x);
}
