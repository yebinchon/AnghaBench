
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int compat_tests () ;
 int impl_tests () ;
 int printf (char*) ;
 int randombytes_salsa20_implementation ;
 int randombytes_set_implementation (int *) ;
 int randombytes_tests () ;

int
main(void)
{
    compat_tests();
    randombytes_tests();

    impl_tests();

    printf("OK\n");


    randombytes_set_implementation(&randombytes_salsa20_implementation);


    return 0;
}
