
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_onetimeauth_state ;
typedef int crypto_onetimeauth_poly1305_state ;


 int crypto_onetimeauth_poly1305_final (int *,unsigned char*) ;

int
crypto_onetimeauth_final(crypto_onetimeauth_state *state,
                         unsigned char *out)
{
    return crypto_onetimeauth_poly1305_final
        ((crypto_onetimeauth_poly1305_state *) state, out);
}
