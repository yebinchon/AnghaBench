
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_generichash_blake2b (unsigned char*,size_t,unsigned char const*,unsigned long long,unsigned char const*,size_t) ;

int
crypto_generichash(unsigned char *out, size_t outlen, const unsigned char *in,
                   unsigned long long inlen, const unsigned char *key,
                   size_t keylen)
{
    return crypto_generichash_blake2b(out, outlen, in, inlen, key, keylen);
}
