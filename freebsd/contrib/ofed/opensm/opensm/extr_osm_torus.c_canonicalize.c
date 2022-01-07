
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static
int canonicalize(int v, int vmax)
{
 if (v >= 0 && v < vmax)
  return v;

 if (v < 0)
  v += vmax * (1 - v/vmax);

 return v % vmax;
}
