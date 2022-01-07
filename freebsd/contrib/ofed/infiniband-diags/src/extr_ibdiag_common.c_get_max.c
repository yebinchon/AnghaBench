
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int get_max(unsigned int num)
{
 unsigned r = 0;

 while (num >>= 1)
  r++;

 return (1 << r);
}
