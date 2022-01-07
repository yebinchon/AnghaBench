
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMPILER_ASSERT (int) ;
 int crypto_core_hchacha20 (unsigned char*,unsigned char const*,unsigned char const*,int *) ;
 scalar_t__ crypto_core_hchacha20_INPUTBYTES ;
 int crypto_core_hchacha20_OUTPUTBYTES ;
 int crypto_stream_chacha20 (unsigned char*,unsigned long long,unsigned char const*,unsigned char*) ;
 int crypto_stream_chacha20_KEYBYTES ;
 scalar_t__ crypto_stream_chacha20_NONCEBYTES ;
 scalar_t__ crypto_stream_xchacha20_NONCEBYTES ;

int
crypto_stream_xchacha20(unsigned char *c, unsigned long long clen,
                        const unsigned char *n, const unsigned char *k)
{
    unsigned char k2[crypto_core_hchacha20_OUTPUTBYTES];

    crypto_core_hchacha20(k2, n, k, ((void*)0));
    COMPILER_ASSERT(crypto_stream_chacha20_KEYBYTES <= sizeof k2);
    COMPILER_ASSERT(crypto_stream_chacha20_NONCEBYTES ==
                    crypto_stream_xchacha20_NONCEBYTES -
                        crypto_core_hchacha20_INPUTBYTES);

    return crypto_stream_chacha20(c, clen, n + crypto_core_hchacha20_INPUTBYTES,
                                  k2);
}
