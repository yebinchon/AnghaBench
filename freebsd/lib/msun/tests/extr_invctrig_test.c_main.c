
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;
 int test_axes () ;
 int test_inf () ;
 int test_large () ;
 int test_nan () ;
 int test_small () ;
 int test_zero () ;

int
main(void)
{

 printf("1..6\n");

 test_zero();
 printf("ok 1 - invctrig zero\n");

 test_nan();
 printf("ok 2 - invctrig nan\n");

 test_inf();
 printf("ok 3 - invctrig inf\n");

 test_axes();
 printf("ok 4 - invctrig axes\n");

 test_small();
 printf("ok 5 - invctrig small\n");

 test_large();
 printf("ok 6 - invctrig large\n");

 return (0);
}
