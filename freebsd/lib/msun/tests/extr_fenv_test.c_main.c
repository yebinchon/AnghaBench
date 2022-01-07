
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_exceptsets () ;
 int printf (char*) ;
 int test_dfl_env () ;
 int test_fegsetenv () ;
 int test_fegsetexceptflag () ;
 int test_fegsetround () ;
 int test_feholdupdate () ;
 int test_feraiseexcept () ;
 int test_fetestclearexcept () ;
 int test_masking () ;

int
main(void)
{

 printf("1..8\n");
 init_exceptsets();
 test_dfl_env();
 printf("ok 1 - fenv\n");
 test_fetestclearexcept();
 printf("ok 2 - fenv\n");
 test_fegsetexceptflag();
 printf("ok 3 - fenv\n");
 test_feraiseexcept();
 printf("ok 4 - fenv\n");
 test_fegsetround();
 printf("ok 5 - fenv\n");
 test_fegsetenv();
 printf("ok 6 - fenv\n");
 test_masking();
 printf("ok 7 - fenv\n");
 test_feholdupdate();
 printf("ok 8 - fenv\n");

 return (0);
}
