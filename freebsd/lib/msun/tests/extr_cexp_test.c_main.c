
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;
 int test_imaginaries () ;
 int test_inf () ;
 int test_large () ;
 int test_nan () ;
 int test_reals () ;
 int test_small () ;
 int test_zero () ;

int
main(void)
{

 printf("1..7\n");

 test_zero();
 printf("ok 1 - cexp zero\n");

 test_nan();
 printf("ok 2 - cexp nan\n");

 test_inf();
 printf("ok 3 - cexp inf\n");

 test_reals();
 printf("ok 4 - cexp reals\n");

 test_imaginaries();
 printf("ok 5 - cexp imaginaries\n");

 test_small();
 printf("ok 6 - cexp small\n");

 test_large();
 printf("ok 7 - cexp large\n");

 return (0);
}
