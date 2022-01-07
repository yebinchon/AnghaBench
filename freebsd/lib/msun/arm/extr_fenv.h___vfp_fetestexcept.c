
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fexcept_t ;


 int vmrs_fpscr (int) ;

inline int
fetestexcept(int __excepts)
{
 fexcept_t __fpsr;

 vmrs_fpscr(__fpsr);
 return (__fpsr & __excepts);
}
