
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fexcept_t ;


 int __fwait () ;
 int fesetexceptflag (int*,int) ;

int
feraiseexcept(int excepts)
{
 fexcept_t ex = excepts;

 fesetexceptflag(&ex, excepts);
 __fwait();
 return (0);
}
