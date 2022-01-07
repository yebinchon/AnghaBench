
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_quad_t ;
typedef long long quad_t ;


 float QUAD_MAX ;
 float QUAD_MIN ;

long long
__fixsfdi(float x)
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
