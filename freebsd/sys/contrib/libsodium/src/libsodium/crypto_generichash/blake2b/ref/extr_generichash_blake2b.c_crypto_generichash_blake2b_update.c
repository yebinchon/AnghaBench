
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int crypto_generichash_blake2b_state ;


 int blake2b_update (int *,int const*,int ) ;

int
crypto_generichash_blake2b_update(crypto_generichash_blake2b_state *state,
                                  const unsigned char *in,
                                  unsigned long long inlen)
{
    return blake2b_update(state, (const uint8_t *) in, (uint64_t) inlen);
}
