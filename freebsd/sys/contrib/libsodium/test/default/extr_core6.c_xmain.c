
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ c ;
 int crypto_core_salsa20 (scalar_t__,scalar_t__,int ,scalar_t__) ;
 scalar_t__ in ;
 int k ;
 scalar_t__ out ;
 int print (scalar_t__,scalar_t__) ;
 int printf (char*) ;

int
main(void)
{
    crypto_core_salsa20(out, in, k, c);
    print(out, c);
    print(out + 20, c + 4);
    printf("\n");
    print(out + 40, c + 8);
    print(out + 60, c + 12);
    printf("\n");
    print(out + 24, in);
    print(out + 28, in + 4);
    printf("\n");
    print(out + 32, in + 8);
    print(out + 36, in + 12);
    printf("\n");

    return 0;
}
