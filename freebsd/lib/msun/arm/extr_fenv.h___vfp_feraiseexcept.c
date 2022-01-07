
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fexcept_t ;


 int fesetexceptflag (int*,int) ;

inline int
feraiseexcept(int __excepts)
{
 fexcept_t __ex = __excepts;

 fesetexceptflag(&__ex, __excepts);
 return (0);
}
