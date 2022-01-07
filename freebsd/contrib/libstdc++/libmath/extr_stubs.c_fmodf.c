
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fmod (float,float) ;

float
fmodf(float x, float y)
{
  return (float) fmod(x, y);
}
