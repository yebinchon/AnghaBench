
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int octx; int ictx; } ;
typedef TYPE_1__ crypto_auth_hmacsha256_state ;


 int crypto_hash_sha256_final (int *,unsigned char*) ;
 int crypto_hash_sha256_init (int *) ;
 int crypto_hash_sha256_update (int *,unsigned char const*,int) ;
 int memset (unsigned char*,int,int) ;
 int sodium_memzero (void*,int) ;

int
crypto_auth_hmacsha256_init(crypto_auth_hmacsha256_state *state,
                            const unsigned char *key, size_t keylen)
{
    unsigned char pad[64];
    unsigned char khash[32];
    size_t i;

    if (keylen > 64) {
        crypto_hash_sha256_init(&state->ictx);
        crypto_hash_sha256_update(&state->ictx, key, keylen);
        crypto_hash_sha256_final(&state->ictx, khash);
        key = khash;
        keylen = 32;
    }
    crypto_hash_sha256_init(&state->ictx);
    memset(pad, 0x36, 64);
    for (i = 0; i < keylen; i++) {
        pad[i] ^= key[i];
    }
    crypto_hash_sha256_update(&state->ictx, pad, 64);

    crypto_hash_sha256_init(&state->octx);
    memset(pad, 0x5c, 64);
    for (i = 0; i < keylen; i++) {
        pad[i] ^= key[i];
    }
    crypto_hash_sha256_update(&state->octx, pad, 64);

    sodium_memzero((void *) pad, sizeof pad);
    sodium_memzero((void *) khash, sizeof khash);

    return 0;
}
