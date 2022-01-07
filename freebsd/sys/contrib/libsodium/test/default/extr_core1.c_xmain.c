
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int c ;
 int crypto_core_hsalsa20 (scalar_t__*,int ,int ,int ) ;
 unsigned int crypto_core_hsalsa20_constbytes () ;
 unsigned int crypto_core_hsalsa20_inputbytes () ;
 unsigned int crypto_core_hsalsa20_keybytes () ;
 unsigned int crypto_core_hsalsa20_outputbytes () ;
 scalar_t__* firstkey ;
 int printf (char*,...) ;
 int shared ;
 int zero ;

int
main(void)
{
    int i;

    crypto_core_hsalsa20(firstkey, zero, shared, c);
    for (i = 0; i < 32; ++i) {
        if (i > 0) {
            printf(",");
        } else {
            printf(" ");
        }
        printf("0x%02x", (unsigned int) firstkey[i]);
        if (i % 8 == 7) {
            printf("\n");
        }
    }
    assert(crypto_core_hsalsa20_outputbytes() > 0U);
    assert(crypto_core_hsalsa20_inputbytes() > 0U);
    assert(crypto_core_hsalsa20_keybytes() > 0U);
    assert(crypto_core_hsalsa20_constbytes() > 0U);

    return 0;
}
