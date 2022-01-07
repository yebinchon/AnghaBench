
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int crypto_hash_sha256 (int*,scalar_t__*,int) ;
 int crypto_stream_salsa20 (scalar_t__*,int,int ,int ) ;
 unsigned int crypto_stream_salsa20_keybytes () ;
 unsigned int crypto_stream_salsa20_messagebytes_max () ;
 unsigned int crypto_stream_salsa20_noncebytes () ;
 int crypto_stream_salsa20_xor_ic (scalar_t__*,scalar_t__*,int,int ,unsigned int,int ) ;
 int* h ;
 int noncesuffix ;
 scalar_t__* output ;
 int printf (char*,...) ;
 int secondkey ;

int
main(void)
{
    int i;
    crypto_stream_salsa20(output, sizeof output, noncesuffix, secondkey);
    crypto_hash_sha256(h, output, sizeof output);
    for (i = 0; i < 32; ++i)
        printf("%02x", h[i]);
    printf("\n");

    assert(sizeof output > 4000);

    crypto_stream_salsa20_xor_ic(output, output, 4000, noncesuffix, 0U,
                                 secondkey);
    for (i = 0; i < 4000; ++i)
        assert(output[i] == 0);

    crypto_stream_salsa20_xor_ic(output, output, 4000, noncesuffix, 1U,
                                 secondkey);
    crypto_hash_sha256(h, output, sizeof output);
    for (i = 0; i < 32; ++i)
        printf("%02x", h[i]);
    printf("\n");

    assert(crypto_stream_salsa20_keybytes() > 0U);
    assert(crypto_stream_salsa20_noncebytes() > 0U);
    assert(crypto_stream_salsa20_messagebytes_max() > 0U);

    return 0;
}
