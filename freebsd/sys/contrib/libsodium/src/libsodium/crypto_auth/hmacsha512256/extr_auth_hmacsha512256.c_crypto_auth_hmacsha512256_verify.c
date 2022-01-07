
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_auth_hmacsha512256 (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*) ;
 int crypto_verify_32 (unsigned char const*,unsigned char*) ;
 int sodium_memcmp (unsigned char*,unsigned char const*,int) ;

int
crypto_auth_hmacsha512256_verify(const unsigned char *h,
                                 const unsigned char *in,
                                 unsigned long long inlen,
                                 const unsigned char *k)
{
    unsigned char correct[32];

    crypto_auth_hmacsha512256(correct, in, inlen, k);

    return crypto_verify_32(h, correct) | (-(h == correct)) |
           sodium_memcmp(correct, h, 32);
}
