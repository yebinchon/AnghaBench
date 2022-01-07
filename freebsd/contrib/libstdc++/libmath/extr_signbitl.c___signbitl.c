
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Int64_t ;
typedef int Int32_t ;


 int GET_LDOUBLE_EXP (int,long double) ;
 int GET_LDOUBLE_MSW64 (scalar_t__,long double) ;

int
__signbitl (long double x)
{






  Int32_t e;

  GET_LDOUBLE_EXP (e, x);
  return e & 0x8000;

}
