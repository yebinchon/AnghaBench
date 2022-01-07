
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fexcept_t ;


 int _ROUND_MASK ;
 int __cfc1 (int) ;

inline int
fegetround(void)
{
 fexcept_t fcsr;

 __cfc1(fcsr);

 return (fcsr & _ROUND_MASK);
}
