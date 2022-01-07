
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int __reg; } ;
union __fpscr {TYPE_1__ __bits; int __d; } ;
typedef int fexcept_t ;


 int __mffs (int *) ;

inline int
fegetexceptflag(fexcept_t *__flagp, int __excepts)
{
 union __fpscr __r;

 __mffs(&__r.__d);
 *__flagp = __r.__bits.__reg & __excepts;
 return (0);
}
