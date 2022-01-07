
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* a ;
 int c ;
 int crypto_auth_hmacsha512 (scalar_t__*,int ,int,int ) ;
 int key ;
 int printf (char*,...) ;

int
main(void)
{
    int i;

    crypto_auth_hmacsha512(a, c, sizeof c - 1U, key);
    for (i = 0; i < 64; ++i) {
        printf(",0x%02x", (unsigned int) a[i]);
        if (i % 8 == 7)
            printf("\n");
    }
    return 0;
}
