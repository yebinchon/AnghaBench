
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fp_except_t ;



fp_except_t
fpgetsticky()
{
 int x;

 __asm("cfc1 %0,$31" : "=r" (x));
 return (x >> 2) & 0x1f;
}
