
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* map ;

int
__flt_rounds()
{
 int x;

 __asm("st %%fsr,%0" : "=m" (*&x));
 return map[(x >> 30) & 0x03];
}
