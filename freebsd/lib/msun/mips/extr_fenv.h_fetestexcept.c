
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fexcept_t ;


 int FE_ALL_EXCEPT ;
 int __cfc1 (int) ;

inline int
fetestexcept(int __excepts)
{
 fexcept_t fcsr;

 __excepts &= FE_ALL_EXCEPT;
 __cfc1(fcsr);

 return (fcsr & __excepts);
}
