
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fenv_t ;


 unsigned int CS_BOTH ;
 unsigned int FPE_ABS_ZERO ;
 scalar_t__ fabsl (long double) ;
 int feholdexcept (int *) ;
 int fesetenv (int *) ;
 scalar_t__ isnan (long double) ;
 int signbit (long double) ;

__attribute__((used)) static int
fpequal_tol(long double x, long double y, long double tol,
    unsigned int flags)
{
 fenv_t env;
 int ret;

 if (isnan(x) && isnan(y))
  return (1);
 if (!signbit(x) != !signbit(y) && (flags & CS_BOTH))
  return (0);
 if (x == y)
  return (1);
 if (tol == 0)
  return (0);


 feholdexcept(&env);





 if ((flags & FPE_ABS_ZERO) && y == 0.0)
  ret = fabsl(x - y) <= fabsl(tol);
 else
  ret = fabsl(x - y) <= fabsl(y * tol);
 fesetenv(&env);
 return (ret);
}
