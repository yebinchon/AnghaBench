
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned int dragonfly_min_pwe_loop_iter(int group)
{
 if (group == 22 || group == 23 || group == 24) {


  return 40;
 }

 if (group == 1 || group == 2 || group == 5 || group == 14 ||
     group == 15 || group == 16 || group == 17 || group == 18) {

  return 1;
 }


 return 40;
}
