
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int c ;
 int crypto_core_hsalsa20 (scalar_t__*,int ,int ,int ) ;
 int firstkey ;
 int nonceprefix ;
 int printf (char*,...) ;
 scalar_t__* secondkey ;

int
main(void)
{
    int i;

    crypto_core_hsalsa20(secondkey, nonceprefix, firstkey, c);
    for (i = 0; i < 32; ++i) {
        if (i > 0) {
            printf(",");
        } else {
            printf(" ");
        }
        printf("0x%02x", (unsigned int) secondkey[i]);
        if (i % 8 == 7) {
            printf("\n");
        }
    }
    return 0;
}
