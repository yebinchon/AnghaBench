
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __uint32_t ;
typedef int __uint16_t ;


 int FE_ALL_EXCEPT ;
 int _SSE_EMASK_SHIFT ;
 scalar_t__ __HAS_SSE () ;
 int __fldcw (int*) ;
 int __fnstcw (int*) ;
 int __ldmxcsr (int*) ;
 int __stmxcsr (int*) ;

int
__fedisableexcept(int mask)
{
 __uint32_t mxcsr, omask;
 __uint16_t control;

 mask &= FE_ALL_EXCEPT;
 __fnstcw(&control);
 if (__HAS_SSE())
  __stmxcsr(&mxcsr);
 else
  mxcsr = 0;
 omask = ~(control | mxcsr >> _SSE_EMASK_SHIFT) & FE_ALL_EXCEPT;
 control |= mask;
 __fldcw(&control);
 if (__HAS_SSE()) {
  mxcsr |= mask << _SSE_EMASK_SHIFT;
  __ldmxcsr(&mxcsr);
 }
 return (omask);
}
