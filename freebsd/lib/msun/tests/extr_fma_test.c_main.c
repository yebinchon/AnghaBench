
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FE_DOWNWARD ;
 int FE_TONEAREST ;
 int FE_TOWARDZERO ;
 int FE_UPWARD ;
 int exit (int ) ;
 int fesetround (int) ;
 unsigned int nitems (int*) ;
 int printf (char*,...) ;
 int test_accuracy () ;
 int test_big_z () ;
 int test_double_rounding () ;
 int test_infinities () ;
 int test_nans () ;
 int test_small_z () ;
 int test_zeroes () ;

int
main(void)
{
 int rmodes[] = { FE_TONEAREST, FE_UPWARD, FE_DOWNWARD, FE_TOWARDZERO };
 unsigned i, j;






 j = 1;

 printf("1..19\n");

 for (i = 0; i < nitems(rmodes); i++, j++) {
  printf("rmode = %d\n", rmodes[i]);
  fesetround(rmodes[i]);
  test_zeroes();
  printf("ok %d - fma zeroes\n", j);
 }

 for (i = 0; i < nitems(rmodes); i++, j++) {

  printf("ok %d # SKIP testcase fails assertion on "
      "amd64\n", j);
  continue;






 }

 fesetround(FE_TONEAREST);
 test_nans();
 printf("ok %d - fma NaNs\n", j);
 j++;

 for (i = 0; i < nitems(rmodes); i++, j++) {
  printf("rmode = %d\n", rmodes[i]);
  fesetround(rmodes[i]);
  test_small_z();
  printf("ok %d - fma small z\n", j);
 }

 for (i = 0; i < nitems(rmodes); i++, j++) {
  printf("rmode = %d\n", rmodes[i]);
  fesetround(rmodes[i]);
  test_big_z();
  printf("ok %d - fma big z\n", j);
 }

 fesetround(FE_TONEAREST);
 test_accuracy();
 printf("ok %d - fma accuracy\n", j);
 j++;

 test_double_rounding();
 printf("ok %d - fma double rounding\n", j);
 j++;







 return (0);
}
