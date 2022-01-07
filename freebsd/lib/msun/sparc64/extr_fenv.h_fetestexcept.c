
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fexcept_t ;


 int __stxfsr (int*) ;

inline int
fetestexcept(int __excepts)
{
 fexcept_t __r;

 __stxfsr(&__r);
 return (__r & __excepts);
}
