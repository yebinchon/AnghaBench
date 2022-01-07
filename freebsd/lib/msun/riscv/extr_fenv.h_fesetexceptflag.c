
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fexcept_t ;



inline int
fesetexceptflag(const fexcept_t *__flagp, int __excepts)
{
 fexcept_t __fcsr;

 __fcsr = *__flagp;
 __asm __volatile("csrc fflags, %0" :: "r"(__excepts));
 __asm __volatile("csrs fflags, %0" :: "r"(__fcsr & __excepts));

 return (0);
}
