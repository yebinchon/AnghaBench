
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static
int uniform_vlarb_weight_value(unsigned *weight, unsigned count)
{
 int i, v = weight[0];

 for (i = 1; i < count; i++) {
  if (v != weight[i])
   return -1;
 }
 return v;
}
