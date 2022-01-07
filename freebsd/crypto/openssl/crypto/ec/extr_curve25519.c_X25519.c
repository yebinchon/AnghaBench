
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ CRYPTO_memcmp (int const*,int *,int) ;
 int x25519_scalar_mult (int *,int const*,int const*) ;

int X25519(uint8_t out_shared_key[32], const uint8_t private_key[32],
           const uint8_t peer_public_value[32])
{
    static const uint8_t kZeros[32] = {0};
    x25519_scalar_mult(out_shared_key, private_key, peer_public_value);

    return CRYPTO_memcmp(kZeros, out_shared_key, 32) != 0;
}
