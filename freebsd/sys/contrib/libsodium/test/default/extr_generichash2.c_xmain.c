
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_generichash_state ;


 int MAXLEN ;
 int assert (int) ;
 int crypto_generichash_BYTES_MAX ;
 unsigned int crypto_generichash_KEYBYTES ;
 int crypto_generichash_KEYBYTES_MAX ;
 int crypto_generichash_final (int *,unsigned char*,int) ;
 int crypto_generichash_init (int *,unsigned char*,unsigned int,unsigned int) ;
 int crypto_generichash_statebytes () ;
 int crypto_generichash_update (int *,unsigned char*,size_t) ;
 int printf (char*,...) ;
 int sodium_free (int *) ;
 scalar_t__ sodium_malloc (int) ;

int
main(void)
{

    crypto_generichash_state *st;
    unsigned char in[64];
    unsigned char out[crypto_generichash_BYTES_MAX];
    unsigned char k[crypto_generichash_KEYBYTES_MAX];
    size_t h, i, j;

    assert(crypto_generichash_statebytes() >= sizeof *st);
    st = (crypto_generichash_state *)
        sodium_malloc(crypto_generichash_statebytes());
    for (h = 0; h < crypto_generichash_KEYBYTES_MAX; ++h) {
        k[h] = (unsigned char) h;
    }
    for (i = 0; i < 64; ++i) {
        in[i] = (unsigned char) i;
        if (crypto_generichash_init(st, k,
                                    1 + i % crypto_generichash_KEYBYTES_MAX,
                                    1 + i % crypto_generichash_BYTES_MAX) != 0) {
            printf("crypto_generichash_init()\n");
            return 1;
        }
        crypto_generichash_update(st, in, i);
        crypto_generichash_update(st, in, i);
        crypto_generichash_update(st, in, i);
        if (crypto_generichash_final(st, out,
                                     1 + i % crypto_generichash_BYTES_MAX) != 0) {
            printf("crypto_generichash_final() should have returned 0\n");
        }
        for (j = 0; j < 1 + i % crypto_generichash_BYTES_MAX; ++j) {
            printf("%02x", (unsigned int) out[j]);
        }
        printf("\n");
        if (crypto_generichash_final(st, out,
                                     1 + i % crypto_generichash_BYTES_MAX) != -1) {
            printf("crypto_generichash_final() should have returned -1\n");
        }
    }

    assert(crypto_generichash_init(st, k, sizeof k, 0U) == -1);
    assert(crypto_generichash_init(st, k, sizeof k,
                                   crypto_generichash_BYTES_MAX + 1U) == -1);
    assert(crypto_generichash_init(st, k, crypto_generichash_KEYBYTES_MAX + 1U,
                                   sizeof out) == -1);
    assert(crypto_generichash_init(st, k, 0U, sizeof out) == 0);
    assert(crypto_generichash_init(st, k, 1U, sizeof out) == 0);
    assert(crypto_generichash_init(st, ((void*)0), 1U, 0U) == -1);
    assert(crypto_generichash_init(st, ((void*)0), crypto_generichash_KEYBYTES,
                                   1U) == 0);
    assert(crypto_generichash_init(st, ((void*)0), crypto_generichash_KEYBYTES,
                                   0U) == -1);

    sodium_free(st);

    return 0;
}
