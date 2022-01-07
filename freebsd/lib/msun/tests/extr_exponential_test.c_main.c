
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FP_PE ;
 int fpsetprec (int ) ;
 int printf (char*) ;
 int run_exp2_tests () ;
 int run_generic_tests () ;

int
main(void)
{

 printf("1..3\n");

 run_generic_tests();
 printf("ok 1 - exponential\n");





 printf("ok 2 - exponential\n");

 run_exp2_tests();
 printf("ok 3 - exponential\n");

 return (0);
}
