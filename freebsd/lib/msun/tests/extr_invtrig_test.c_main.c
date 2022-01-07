
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;
 int test_accuracy () ;
 int test_atan_huge () ;
 int test_inverse () ;
 int test_p2x_atan2 () ;
 int test_special () ;
 int test_special_atan2 () ;
 int test_tiny () ;

int
main(void)
{






 printf("1..7\n");

 test_special();
 printf("ok 1 - special\n");

 test_special_atan2();
 printf("ok 2 - atan2 special\n");

 test_accuracy();
 printf("ok 3 - accuracy\n");

 test_p2x_atan2();
 printf("ok 4 - atan2 p2x\n");

 test_tiny();
 printf("ok 5 - tiny inputs\n");

 test_atan_huge();
 printf("ok 6 - atan huge inputs\n");

 test_inverse();
 printf("ok 7 - inverse\n");

 return (0);
}
