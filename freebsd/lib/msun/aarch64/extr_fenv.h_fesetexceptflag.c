
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fexcept_t ;


 int __mrs_fpsr (int) ;
 int __msr_fpsr (int) ;

inline int
fesetexceptflag(const fexcept_t *__flagp, int __excepts)
{
 fexcept_t __r;

 __mrs_fpsr(__r);
 __r &= ~__excepts;
 __r |= *__flagp & __excepts;
 __msr_fpsr(__r);
 return (0);
}
