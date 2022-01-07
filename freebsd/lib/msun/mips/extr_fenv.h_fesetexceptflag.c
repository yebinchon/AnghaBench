
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fexcept_t ;


 int FE_ALL_EXCEPT ;
 int __cfc1 (int) ;
 int __ctc1 (int) ;

inline int
fesetexceptflag(const fexcept_t *__flagp, int __excepts)
{
 fexcept_t fcsr;

 __excepts &= FE_ALL_EXCEPT;
 __cfc1(fcsr);
 fcsr &= ~__excepts;
 fcsr |= *__flagp & __excepts;
 __ctc1(fcsr);

 return (0);
}
