
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXLEN ;
 int assert (int) ;
 int crypto_shorthash (unsigned char*,unsigned char*,unsigned long long,unsigned char*) ;
 int crypto_shorthash_BYTES ;
 int crypto_shorthash_KEYBYTES ;
 scalar_t__ crypto_shorthash_bytes () ;
 scalar_t__ crypto_shorthash_keybytes () ;
 int crypto_shorthash_primitive () ;
 scalar_t__ crypto_shorthash_siphash24_bytes () ;
 scalar_t__ crypto_shorthash_siphash24_keybytes () ;
 int printf (char*,...) ;
 scalar_t__ strcmp (int ,char*) ;

int
main(void)
{
    unsigned char in[MAXLEN];
    unsigned char out[crypto_shorthash_BYTES];
    unsigned char k[crypto_shorthash_KEYBYTES];
    size_t i;
    size_t j;

    for (i = 0; i < crypto_shorthash_KEYBYTES; ++i) {
        k[i] = (unsigned char) i;
    }
    for (i = 0; i < MAXLEN; ++i) {
        in[i] = (unsigned char) i;
        crypto_shorthash(out, in, (unsigned long long) i, k);
        for (j = 0; j < crypto_shorthash_BYTES; ++j) {
            printf("%02x", (unsigned int) out[j]);
        }
        printf("\n");
    }
    assert(crypto_shorthash_bytes() > 0);
    assert(crypto_shorthash_keybytes() > 0);
    assert(strcmp(crypto_shorthash_primitive(), "siphash24") == 0);
    assert(crypto_shorthash_bytes() == crypto_shorthash_siphash24_bytes());
    assert(crypto_shorthash_keybytes() ==
           crypto_shorthash_siphash24_keybytes());

    return 0;
}
