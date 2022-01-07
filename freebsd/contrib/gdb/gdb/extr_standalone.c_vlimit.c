
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memory_limit ;
 int next_free ;

int
vlimit (void)
{
  return memory_limit - next_free;
}
