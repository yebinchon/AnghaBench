
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int __reg; } ;
union __fpscr {int __d; TYPE_1__ __bits; } ;
typedef int fexcept_t ;


 int FE_ALL_EXCEPT ;
 int FE_INVALID ;
 int __mffs (int *) ;
 int __mtfsf (int ) ;

inline int
fesetexceptflag(const fexcept_t *__flagp, int __excepts)
{
 union __fpscr __r;

 if (__excepts & FE_INVALID)
  __excepts |= FE_ALL_EXCEPT;
 __mffs(&__r.__d);
 __r.__bits.__reg &= ~__excepts;
 __r.__bits.__reg |= *__flagp & __excepts;
 __mtfsf(__r.__d);
 return (0);
}
