
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int dragonfly_suitable_group(int group, int ecc_only)
{
 return group == 19 || group == 20 || group == 21 ||
  (!ecc_only &&
   (group == 15 || group == 16 || group == 17 || group == 18));
}
