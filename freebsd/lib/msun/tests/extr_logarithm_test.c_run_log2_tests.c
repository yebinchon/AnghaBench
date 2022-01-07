
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALL_STD_EXCEPT ;
 unsigned int DBL_MANT_DIG ;
 unsigned int DBL_MAX_EXP ;
 unsigned int DBL_MIN_EXP ;
 int FE_ALL_EXCEPT ;
 unsigned int FLT_MANT_DIG ;
 unsigned int FLT_MAX_EXP ;
 unsigned int FLT_MIN_EXP ;
 unsigned int LDBL_MANT_DIG ;
 unsigned int LDBL_MAX_EXP ;
 unsigned int LDBL_MIN_EXP ;
 int assert (int) ;
 scalar_t__ feclearexcept (int ) ;
 scalar_t__ fetestexcept (int ) ;
 int ldexp (double,unsigned int) ;
 int ldexpf (double,unsigned int) ;
 int ldexpl (double,unsigned int) ;
 unsigned int log2 (int ) ;
 unsigned int log2f (int ) ;
 unsigned int log2l (int ) ;

__attribute__((used)) static void
run_log2_tests(void)
{
 unsigned i;





 assert(feclearexcept(FE_ALL_EXCEPT) == 0);
 for (i = FLT_MIN_EXP - FLT_MANT_DIG; i < FLT_MAX_EXP; i++) {
  assert(log2f(ldexpf(1.0, i)) == i);
  assert(fetestexcept(ALL_STD_EXCEPT) == 0);
 }
 for (i = DBL_MIN_EXP - DBL_MANT_DIG; i < DBL_MAX_EXP; i++) {
  assert(log2(ldexp(1.0, i)) == i);
  assert(fetestexcept(ALL_STD_EXCEPT) == 0);
 }
 for (i = LDBL_MIN_EXP - LDBL_MANT_DIG; i < LDBL_MAX_EXP; i++) {
  assert(log2l(ldexpl(1.0, i)) == i);




 }
}
