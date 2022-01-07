
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fexcept_t ;


 int _ROUND_MASK ;
 int __rfs (int) ;

inline int
fegetround(void)
{
 fexcept_t __fcsr;

 __rfs(__fcsr);

 return (__fcsr & _ROUND_MASK);
}
