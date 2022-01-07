
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fexcept_t ;


 int ALL_STD_EXCEPT ;
 int FE_ALL_EXCEPT ;
 int NEXCEPTS ;
 int assert (int) ;
 scalar_t__ feclearexcept (int) ;
 scalar_t__ fegetexceptflag (int *,int) ;
 scalar_t__ fesetexceptflag (int *,int) ;
 int fetestexcept (int) ;
 int raiseexcept (int) ;
 int* std_except_sets ;

__attribute__((used)) static void
test_fegsetexceptflag(void)
{
 fexcept_t flag;
 int excepts, i;

 assert(fetestexcept(FE_ALL_EXCEPT) == 0);
 for (i = 0; i < 1 << NEXCEPTS; i++) {
  excepts = std_except_sets[i];

  assert(fegetexceptflag(&flag, excepts) == 0);
  raiseexcept(ALL_STD_EXCEPT);
  assert(fesetexceptflag(&flag, excepts) == 0);
  assert(fetestexcept(ALL_STD_EXCEPT) ==
      (ALL_STD_EXCEPT ^ excepts));

  assert(fegetexceptflag(&flag, FE_ALL_EXCEPT) == 0);
  assert(feclearexcept(FE_ALL_EXCEPT) == 0);
  assert(fesetexceptflag(&flag, excepts) == 0);
  assert(fetestexcept(ALL_STD_EXCEPT) == 0);
  assert(fesetexceptflag(&flag, ALL_STD_EXCEPT ^ excepts) == 0);
  assert(fetestexcept(ALL_STD_EXCEPT) ==
      (ALL_STD_EXCEPT ^ excepts));

  assert(feclearexcept(FE_ALL_EXCEPT) == 0);
 }
}
