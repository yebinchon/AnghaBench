
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int __reg; } ;
union __fpscr {int __d; TYPE_1__ __bits; } ;


 int FE_INVALID ;
 int FE_VXSOFT ;
 int __mffs (int *) ;
 int __mtfsf (int ) ;

inline int
feraiseexcept(int __excepts)
{
 union __fpscr __r;

 if (__excepts & FE_INVALID)
  __excepts |= FE_VXSOFT;
 __mffs(&__r.__d);
 __r.__bits.__reg |= __excepts;
 __mtfsf(__r.__d);
 return (0);
}
