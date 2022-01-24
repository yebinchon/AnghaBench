#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  unsigned int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,size_t,unsigned char*,unsigned char*) ; 
 int crypto_stream_chacha20_IETF_NONCEBYTES ; 
 int crypto_stream_chacha20_KEYBYTES ; 
 scalar_t__ FUNC2 (unsigned char*,unsigned int,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC3 (unsigned char*,unsigned char*,int,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC4 (unsigned char*,unsigned char*,int,unsigned char*,unsigned int,unsigned char*) ; 
 scalar_t__ FUNC5 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,int,char const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (size_t) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 

__attribute__((used)) static
void FUNC14(void)
{
    static struct {
        const char *key_hex;
        const char *nonce_hex;
        uint32_t    ic;
    } tests[]
      = { { "0000000000000000000000000000000000000000000000000000000000000000",
            "000000000000000000000000",
            0U },
          { "0000000000000000000000000000000000000000000000000000000000000000",
            "000000000000000000000000",
            1U },
          { "0000000000000000000000000000000000000000000000000000000000000001",
            "000000000000000000000000",
            1U },
          { "00ff000000000000000000000000000000000000000000000000000000000000",
            "000000000000000000000000",
            2U },
          { "0000000000000000000000000000000000000000000000000000000000000000",
            "000000000000000000000002",
            0U },
          { "000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f",
            "000000090000004a00000000",
            1U },
          { "000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f",
            "000000090000004a00000000",
            0xffffffff }};
    unsigned char  key[crypto_stream_chacha20_KEYBYTES];
    unsigned char  nonce[crypto_stream_chacha20_IETF_NONCEBYTES];
    unsigned char *part;
    unsigned char  out[160];
    unsigned char  zero[160];
    char           out_hex[160 * 2 + 1];
    size_t         i = 0U;
    size_t         plen;

    FUNC6(zero, 0, sizeof zero);
    do {
        FUNC11((unsigned char *)key, sizeof key, tests[i].key_hex,
                       FUNC13(tests[i].key_hex), ": ", NULL, NULL);
        FUNC11(nonce, sizeof nonce, tests[i].nonce_hex,
                       FUNC13(tests[i].nonce_hex), ": ", NULL, NULL);
        FUNC6(out, 0, sizeof out);
        FUNC4(out, out, sizeof out, nonce, tests[i].ic, key);
        FUNC9(out_hex, sizeof out_hex, out, sizeof out);
        FUNC7("[%s]\n", out_hex);
        for (plen = 1U; plen < sizeof out; plen++) {
            part = (unsigned char *) FUNC12(plen);
            FUNC4(part, out, plen, nonce, tests[i].ic, key);
            if (FUNC5(part, zero, plen) != 0) {
                FUNC7("Failed with length %lu\n", (unsigned long) plen);
            }
            FUNC10(part);
        }
    } while (++i < (sizeof tests) / (sizeof tests[0]));
    FUNC0(66 <= sizeof out);
    for (plen = 1U; plen < 66; plen += 3) {
        FUNC6(out, (int) (plen & 0xff), sizeof out);
        FUNC1(out, plen, nonce, key);
        FUNC9(out_hex, sizeof out_hex, out, sizeof out);
        FUNC7("[%s]\n", out_hex);
    }
    FUNC8(out, sizeof out);
    FUNC2(out, sizeof out, nonce, key);
    FUNC9(out_hex, sizeof out_hex, out, sizeof out);
    FUNC7("[%s]\n", out_hex);

    FUNC0(FUNC2(out, 0U, nonce, key) == 0);
    FUNC0(FUNC3(out, out, 0U, nonce, key) == 0);
    FUNC0(FUNC3(out, out, 0U, nonce, key) == 0);
    FUNC0(FUNC4(out, out, 0U, nonce, 1U, key) == 0);

    FUNC6(out, 0x42, sizeof out);
    FUNC3(out, out, sizeof out, nonce, key);
    FUNC9(out_hex, sizeof out_hex, out, sizeof out);
    FUNC7("[%s]\n", out_hex);

    FUNC4(out, out, sizeof out, nonce, 0U, key);
    FUNC9(out_hex, sizeof out_hex, out, sizeof out);
    FUNC7("[%s]\n", out_hex);

    FUNC4(out, out, sizeof out, nonce, 1U, key);
    FUNC9(out_hex, sizeof out_hex, out, sizeof out);
    FUNC7("[%s]\n", out_hex);
}