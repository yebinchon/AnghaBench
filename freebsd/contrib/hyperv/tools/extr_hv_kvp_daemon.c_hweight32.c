
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int
hweight32(unsigned int *w)
{
 unsigned int res = *w - ((*w >> 1) & 0x55555555);

 res = (res & 0x33333333) + ((res >> 2) & 0x33333333);
 res = (res + (res >> 4)) & 0x0F0F0F0F;
 res = res + (res >> 8);
 return ((res + (res >> 16)) & 0x000000FF);
}
