
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_sign_state ;


 int crypto_sign_ed25519ph_init (int *) ;

int
crypto_sign_init(crypto_sign_state *state)
{
    return crypto_sign_ed25519ph_init(state);
}
