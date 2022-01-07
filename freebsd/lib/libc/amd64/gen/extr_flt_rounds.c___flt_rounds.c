
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* map ;

int
__flt_rounds(void)
{
 int x;


 __asm("fnstcw %0" : "=m" (x));
        return (map[(x >> 10) & 0x03]);
}
