
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int register_t ;



__attribute__((used)) static __inline register_t
mfmsr(void)
{
 register_t value;

 __asm __volatile ("mfmsr %0" : "=r"(value));

 return (value);
}
