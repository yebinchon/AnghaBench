
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_link_speed_ext(int lsee, int lses)
{
 if (lsee == 31)
  return lses;
 else
  return lsee;
}
