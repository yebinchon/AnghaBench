
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALL_STD_EXCEPT ;
 int FE_ALL_EXCEPT ;
 int FE_INEXACT ;
 int FE_OVERFLOW ;
 int FE_UNDERFLOW ;
 int NEXCEPTS ;
 int assert (int) ;
 scalar_t__ feclearexcept (int) ;
 scalar_t__ fetestexcept (int) ;
 int raiseexcept (int) ;
 int* std_except_sets ;

__attribute__((used)) static void
test_fetestclearexcept(void)
{
 int excepts, i;

 for (i = 0; i < 1 << NEXCEPTS; i++)
  assert(fetestexcept(std_except_sets[i]) == 0);
 for (i = 0; i < 1 << NEXCEPTS; i++) {
  excepts = std_except_sets[i];


  raiseexcept(excepts);
  assert(fetestexcept(excepts) == excepts);
  assert(feclearexcept(FE_ALL_EXCEPT) == 0);
  assert(fetestexcept(FE_ALL_EXCEPT) == 0);

  raiseexcept(excepts);
  assert(fetestexcept(excepts) == excepts);
  if ((excepts & (FE_UNDERFLOW | FE_OVERFLOW)) != 0) {
   excepts |= FE_INEXACT;
   assert((fetestexcept(ALL_STD_EXCEPT) | FE_INEXACT) ==
       excepts);
  } else {
   assert(fetestexcept(ALL_STD_EXCEPT) == excepts);
  }
  assert(feclearexcept(excepts) == 0);
  assert(fetestexcept(ALL_STD_EXCEPT) == 0);
 }
}
