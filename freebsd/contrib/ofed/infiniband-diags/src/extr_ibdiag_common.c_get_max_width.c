
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int get_max_width(unsigned int num)
{
 unsigned r = 0;

 if (num & 8)
  r = 3;
 else {
  if (num & 4)
   r = 2;
  else if (num & 2)
   r = 1;
  else if (num & 0x10)
   r = 4;
 }

        return (1 << r);
}
