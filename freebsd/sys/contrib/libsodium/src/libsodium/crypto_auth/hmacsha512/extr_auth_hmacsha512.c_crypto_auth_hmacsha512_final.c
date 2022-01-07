
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int octx; int ictx; } ;
typedef TYPE_1__ crypto_auth_hmacsha512_state ;


 int crypto_hash_sha512_final (int *,unsigned char*) ;
 int crypto_hash_sha512_update (int *,unsigned char*,int) ;
 int sodium_memzero (void*,int) ;

int
crypto_auth_hmacsha512_final(crypto_auth_hmacsha512_state *state,
                             unsigned char *out)
{
    unsigned char ihash[64];

    crypto_hash_sha512_final(&state->ictx, ihash);
    crypto_hash_sha512_update(&state->octx, ihash, 64);
    crypto_hash_sha512_final(&state->octx, out);

    sodium_memzero((void *) ihash, sizeof ihash);

    return 0;
}
