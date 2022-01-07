
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;



__attribute__((used)) static int
keytag_compare(const void* x, const void* y)
{
 if(*(uint16_t*)x == *(uint16_t*)y)
  return 0;
 if(*(uint16_t*)x > *(uint16_t*)y)
  return 1;
 return -1;
}
