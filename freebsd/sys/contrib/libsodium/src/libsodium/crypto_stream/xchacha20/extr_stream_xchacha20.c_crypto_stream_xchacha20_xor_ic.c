
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int crypto_core_hchacha20 (unsigned char*,unsigned char const*,unsigned char const*,int *) ;
 int crypto_core_hchacha20_INPUTBYTES ;
 int crypto_core_hchacha20_OUTPUTBYTES ;
 int crypto_stream_chacha20_xor_ic (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,int ,unsigned char*) ;

int
crypto_stream_xchacha20_xor_ic(unsigned char *c, const unsigned char *m,
                               unsigned long long mlen, const unsigned char *n,
                               uint64_t ic, const unsigned char *k)
{
    unsigned char k2[crypto_core_hchacha20_OUTPUTBYTES];

    crypto_core_hchacha20(k2, n, k, ((void*)0));
    return crypto_stream_chacha20_xor_ic(
        c, m, mlen, n + crypto_core_hchacha20_INPUTBYTES, ic, k2);
}
