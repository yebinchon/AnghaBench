
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fenv_t ;


 int FE_ALL_EXCEPT ;
 scalar_t__ FE_DOWNWARD ;
 int FE_INEXACT ;
 int FE_OVERFLOW ;
 scalar_t__ FE_TONEAREST ;
 int FE_UNDERFLOW ;
 int NEXCEPTS ;
 int assert (int) ;
 scalar_t__ feclearexcept (int) ;
 scalar_t__ fegetenv (int *) ;
 scalar_t__ fegetround () ;
 scalar_t__ fesetenv (int *) ;
 int fesetround (scalar_t__) ;
 int fetestexcept (int ) ;
 int raiseexcept (int) ;
 int* std_except_sets ;

__attribute__((used)) static void
test_fegsetenv(void)
{
 fenv_t env1, env2;
 int excepts, i;

 for (i = 0; i < 1 << NEXCEPTS; i++) {
  excepts = std_except_sets[i];

  assert(fetestexcept(FE_ALL_EXCEPT) == 0);
  assert(fegetround() == FE_TONEAREST);
  assert(fegetenv(&env1) == 0);






  raiseexcept(excepts);
  if ((excepts & (FE_UNDERFLOW | FE_OVERFLOW)) != 0 &&
      (excepts & FE_INEXACT) == 0)
   assert(feclearexcept(FE_INEXACT) == 0);

  fesetround(FE_DOWNWARD);
  assert(fegetenv(&env2) == 0);
  assert(fesetenv(&env1) == 0);
  assert(fetestexcept(FE_ALL_EXCEPT) == 0);
  assert(fegetround() == FE_TONEAREST);

  assert(fesetenv(&env2) == 0);
  assert(fetestexcept(FE_ALL_EXCEPT) == excepts);
  assert(fegetround() == FE_DOWNWARD);
  assert(fesetenv(&env1) == 0);
  assert(fetestexcept(FE_ALL_EXCEPT) == 0);
  assert(fegetround() == FE_TONEAREST);
 }
}
