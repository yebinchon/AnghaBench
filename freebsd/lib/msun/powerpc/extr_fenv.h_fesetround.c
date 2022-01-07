
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int __reg; } ;
union __fpscr {int __d; TYPE_1__ __bits; } ;


 int _ROUND_MASK ;
 int __mffs (int *) ;
 int __mtfsf (int ) ;

inline int
fesetround(int __round)
{
 union __fpscr __r;

 if (__round & ~_ROUND_MASK)
  return (-1);
 __mffs(&__r.__d);
 __r.__bits.__reg &= ~_ROUND_MASK;
 __r.__bits.__reg |= __round;
 __mtfsf(__r.__d);
 return (0);
}
