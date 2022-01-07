
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
rtt_compare(const void* x, const void* y)
{
 if(*(int*)x == *(int*)y)
  return 0;
 if(*(int*)x > *(int*)y)
  return 1;
 return -1;
}
