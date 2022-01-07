
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hs; } ;
typedef TYPE_1__ crypto_sign_ed25519ph_state ;


 int _crypto_sign_ed25519_verify_detached (unsigned char*,unsigned char*,int,unsigned char const*,int) ;
 int crypto_hash_sha512_BYTES ;
 int crypto_hash_sha512_final (int *,unsigned char*) ;

int
crypto_sign_ed25519ph_final_verify(crypto_sign_ed25519ph_state *state,
                                   unsigned char *sig,
                                   const unsigned char *pk)
{
    unsigned char ph[crypto_hash_sha512_BYTES];

    crypto_hash_sha512_final(&state->hs, ph);

    return _crypto_sign_ed25519_verify_detached(sig, ph, sizeof ph, pk, 1);
}
