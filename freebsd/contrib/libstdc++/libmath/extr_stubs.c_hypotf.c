
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float fabsf (float) ;
 float sqrtf (float) ;

float
hypotf(float x, float y)
{
  float s = fabsf(x) + fabsf(y);
  if (s == 0.0F)
    return s;
  x /= s; y /= s;
  return s * sqrtf(x * x + y * y);
}
