
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMPILER_ASSERT (int) ;
 scalar_t__ crypto_kx_PUBLICKEYBYTES ;
 scalar_t__ crypto_kx_SECRETKEYBYTES ;
 scalar_t__ crypto_scalarmult_BYTES ;
 scalar_t__ crypto_scalarmult_SCALARBYTES ;
 int crypto_scalarmult_base (unsigned char*,unsigned char*) ;
 int randombytes_buf (unsigned char*,scalar_t__) ;

int
crypto_kx_keypair(unsigned char pk[crypto_kx_PUBLICKEYBYTES],
                  unsigned char sk[crypto_kx_SECRETKEYBYTES])
{
    COMPILER_ASSERT(crypto_kx_SECRETKEYBYTES == crypto_scalarmult_SCALARBYTES);
    COMPILER_ASSERT(crypto_kx_PUBLICKEYBYTES == crypto_scalarmult_BYTES);

    randombytes_buf(sk, crypto_kx_SECRETKEYBYTES);
    return crypto_scalarmult_base(pk, sk);
}
