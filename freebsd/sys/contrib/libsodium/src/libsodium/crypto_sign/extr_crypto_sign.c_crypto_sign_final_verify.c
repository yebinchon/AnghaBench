
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_sign_state ;


 int crypto_sign_ed25519ph_final_verify (int *,unsigned char*,unsigned char const*) ;

int
crypto_sign_final_verify(crypto_sign_state *state, unsigned char *sig,
                         const unsigned char *pk)
{
    return crypto_sign_ed25519ph_final_verify(state, sig, pk);
}
