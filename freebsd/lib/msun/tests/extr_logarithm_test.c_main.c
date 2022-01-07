
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;
 int run_accuracy_tests () ;
 int run_generic_tests () ;
 int run_log1p_accuracy_tests () ;
 int run_log2_tests () ;
 int run_roundingmode_tests () ;

int
main(void)
{

 printf("1..5\n");

 run_generic_tests();
 printf("ok 1 - logarithm\n");

 run_log2_tests();
 printf("ok 2 - logarithm\n");

 run_roundingmode_tests();
 printf("ok 3 - logarithm\n");

 run_accuracy_tests();
 printf("ok 4 - logarithm\n");

 run_log1p_accuracy_tests();
 printf("ok 5 - logarithm\n");

 return (0);
}
