
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXLEN ;
 int assert (int) ;
 int crypto_generichash (unsigned char*,unsigned long long,unsigned char*,unsigned long long,unsigned char*,int) ;
 int crypto_generichash_BYTES_MAX ;
 int crypto_generichash_KEYBYTES_MAX ;
 unsigned int crypto_generichash_blake2b_bytes () ;
 unsigned int crypto_generichash_blake2b_bytes_max () ;
 unsigned int crypto_generichash_blake2b_bytes_min () ;
 unsigned int crypto_generichash_blake2b_keybytes () ;
 unsigned int crypto_generichash_blake2b_keybytes_max () ;
 unsigned int crypto_generichash_blake2b_keybytes_min () ;
 unsigned int crypto_generichash_blake2b_personalbytes () ;
 unsigned int crypto_generichash_blake2b_saltbytes () ;
 unsigned int crypto_generichash_bytes () ;
 unsigned int crypto_generichash_bytes_max () ;
 unsigned int crypto_generichash_bytes_min () ;
 unsigned int crypto_generichash_keybytes () ;
 unsigned int crypto_generichash_keybytes_max () ;
 unsigned int crypto_generichash_keybytes_min () ;
 int crypto_generichash_primitive () ;
 int memset (unsigned char*,int ,int) ;
 int printf (char*,...) ;
 scalar_t__ strcmp (int ,char*) ;
 int tv () ;

int
main(void)
{
    unsigned char in[MAXLEN];
    unsigned char out[crypto_generichash_BYTES_MAX];
    unsigned char k[crypto_generichash_KEYBYTES_MAX];
    size_t h;
    size_t i;
    size_t j;

    tv();

    for (h = 0; h < crypto_generichash_KEYBYTES_MAX; ++h) {
        k[h] = (unsigned char) h;
    }

    for (i = 0; i < MAXLEN; ++i) {
        in[i] = (unsigned char) i;
        crypto_generichash(out, 1 + i % crypto_generichash_BYTES_MAX, in,
                           (unsigned long long) i, k,
                           1 + i % crypto_generichash_KEYBYTES_MAX);
        for (j = 0; j < 1 + i % crypto_generichash_BYTES_MAX; ++j) {
            printf("%02x", (unsigned int) out[j]);
        }
        printf("\n");
    }

    memset(out, 0, sizeof out);
    crypto_generichash(out, crypto_generichash_BYTES_MAX, in,
                       (unsigned long long) i, k, 0U);
    for (j = 0; j < crypto_generichash_BYTES_MAX; ++j) {
        printf("%02x", (unsigned int) out[j]);
    }
    printf("\n");

    assert(crypto_generichash(((void*)0), 0,
                              in, (unsigned long long) sizeof in,
                              k, sizeof k) == -1);
    assert(crypto_generichash(((void*)0), crypto_generichash_BYTES_MAX + 1,
                              in, (unsigned long long) sizeof in,
                              k, sizeof k) == -1);
    assert(crypto_generichash(((void*)0), (unsigned long long) sizeof in,
                              in, (unsigned long long) sizeof in,
                              k, crypto_generichash_KEYBYTES_MAX + 1) == -1);

    assert(crypto_generichash_bytes_min() > 0U);
    assert(crypto_generichash_bytes_max() > 0U);
    assert(crypto_generichash_bytes() > 0U);
    assert(crypto_generichash_bytes() >= crypto_generichash_bytes_min());
    assert(crypto_generichash_bytes() <= crypto_generichash_bytes_max());
    assert(crypto_generichash_keybytes_min() > 0U);
    assert(crypto_generichash_keybytes_max() > 0U);
    assert(crypto_generichash_keybytes() > 0U);
    assert(crypto_generichash_keybytes() >= crypto_generichash_keybytes_min());
    assert(crypto_generichash_keybytes() <= crypto_generichash_keybytes_max());
    assert(strcmp(crypto_generichash_primitive(), "blake2b") == 0);
    assert(crypto_generichash_bytes_min()
           == crypto_generichash_blake2b_bytes_min());
    assert(crypto_generichash_bytes_max()
           == crypto_generichash_blake2b_bytes_max());
    assert(crypto_generichash_bytes() == crypto_generichash_blake2b_bytes());
    assert(crypto_generichash_keybytes_min()
           == crypto_generichash_blake2b_keybytes_min());
    assert(crypto_generichash_keybytes_max()
           == crypto_generichash_blake2b_keybytes_max());
    assert(crypto_generichash_keybytes()
           == crypto_generichash_blake2b_keybytes());
    assert(crypto_generichash_blake2b_saltbytes() > 0U);
    assert(crypto_generichash_blake2b_personalbytes() > 0U);

    return 0;
}
