
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int crypto_hash_sha256 (scalar_t__*,scalar_t__*,int) ;
 int crypto_stream (scalar_t__*,int,int ,int ) ;
 unsigned int crypto_stream_keybytes () ;
 unsigned int crypto_stream_messagebytes_max () ;
 unsigned int crypto_stream_noncebytes () ;
 int crypto_stream_primitive () ;
 unsigned int crypto_stream_xsalsa20_keybytes () ;
 unsigned int crypto_stream_xsalsa20_messagebytes_max () ;
 unsigned int crypto_stream_xsalsa20_noncebytes () ;
 int crypto_stream_xsalsa20_xor_ic (scalar_t__*,scalar_t__*,int,int ,unsigned long long,int ) ;
 int firstkey ;
 scalar_t__* h ;
 char* hex ;
 int memset (scalar_t__*,int,int) ;
 int nonce ;
 scalar_t__* output ;
 int printf (char*,char*) ;
 int randombytes_buf (scalar_t__*,int) ;
 int sodium_bin2hex (char*,int,scalar_t__*,int) ;
 scalar_t__ strcmp (int ,char*) ;

int
main(void)
{
    int i;

    randombytes_buf(output, sizeof output);
    crypto_stream(output, sizeof output, nonce, firstkey);
    crypto_hash_sha256(h, output, sizeof output);
    sodium_bin2hex(hex, sizeof hex, h, sizeof h);
    printf("%s\n", hex);

    assert(sizeof output > 4000);

    crypto_stream_xsalsa20_xor_ic(output, output, 4000, nonce, 0U, firstkey);
    for (i = 0; i < 4000; i++) {
        assert(output[i] == 0);
    }
    crypto_stream_xsalsa20_xor_ic(output, output, 4000, nonce, 1U, firstkey);
    crypto_hash_sha256(h, output, sizeof output);
    sodium_bin2hex(hex, sizeof hex, h, sizeof h);
    printf("%s\n", hex);

    for (i = 0; i < 64; i++) {
        memset(output, i, 64);
        crypto_stream(output, (int) (i & 0xff), nonce, firstkey);
        sodium_bin2hex(hex, sizeof hex, output, 64);
        printf("%s\n", hex);
    }

    memset(output, 0, 192);
    crypto_stream_xsalsa20_xor_ic(output, output, 192, nonce,
                                  (1ULL << 32) - 1ULL, firstkey);
    sodium_bin2hex(hex, 192 * 2 + 1, output, 192);
    printf("%s\n", hex);

    assert(crypto_stream_keybytes() > 0U);
    assert(crypto_stream_noncebytes() > 0U);
    assert(crypto_stream_messagebytes_max() > 0U);
    assert(strcmp(crypto_stream_primitive(), "xsalsa20") == 0);
    assert(crypto_stream_keybytes() == crypto_stream_xsalsa20_keybytes());
    assert(crypto_stream_noncebytes() == crypto_stream_xsalsa20_noncebytes());
    assert(crypto_stream_messagebytes_max() == crypto_stream_xsalsa20_messagebytes_max());

    return 0;
}
