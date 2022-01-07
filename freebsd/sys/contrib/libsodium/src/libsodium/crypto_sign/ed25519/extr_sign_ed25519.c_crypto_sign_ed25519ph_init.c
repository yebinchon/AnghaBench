
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hs; } ;
typedef TYPE_1__ crypto_sign_ed25519ph_state ;


 int crypto_hash_sha512_init (int *) ;

int
crypto_sign_ed25519ph_init(crypto_sign_ed25519ph_state *state)
{
    crypto_hash_sha512_init(&state->hs);
    return 0;
}
