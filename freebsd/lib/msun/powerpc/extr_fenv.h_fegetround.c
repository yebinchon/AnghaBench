
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int __reg; } ;
union __fpscr {TYPE_1__ __bits; int __d; } ;


 int _ROUND_MASK ;
 int __mffs (int *) ;

inline int
fegetround(void)
{
 union __fpscr __r;

 __mffs(&__r.__d);
 return (__r.__bits.__reg & _ROUND_MASK);
}
