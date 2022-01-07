
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_link_speed(int lse, int lss)
{
 if (lse == 15)
  return lss;
 else
  return lse;
}
