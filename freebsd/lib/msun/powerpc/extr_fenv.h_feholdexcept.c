
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int __reg; } ;
union __fpscr {int __d; TYPE_1__ __bits; } ;
typedef int fenv_t ;


 int FE_ALL_EXCEPT ;
 int _ENABLE_MASK ;
 int __mffs (int *) ;
 int __mtfsf (int ) ;

inline int
feholdexcept(fenv_t *__envp)
{
 union __fpscr __r;

 __mffs(&__r.__d);
 *__envp = __r.__d;
 __r.__bits.__reg &= ~(FE_ALL_EXCEPT | _ENABLE_MASK);
 __mtfsf(__r.__d);
 return (0);
}
