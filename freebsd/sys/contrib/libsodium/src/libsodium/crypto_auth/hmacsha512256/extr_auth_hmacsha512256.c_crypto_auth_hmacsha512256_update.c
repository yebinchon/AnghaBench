
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_auth_hmacsha512_state ;
typedef int crypto_auth_hmacsha512256_state ;


 int crypto_auth_hmacsha512_update (int *,unsigned char const*,unsigned long long) ;

int
crypto_auth_hmacsha512256_update(crypto_auth_hmacsha512256_state *state,
                                 const unsigned char *in,
                                 unsigned long long inlen)
{
    return crypto_auth_hmacsha512_update((crypto_auth_hmacsha512_state *) state,
                                         in, inlen);
}
