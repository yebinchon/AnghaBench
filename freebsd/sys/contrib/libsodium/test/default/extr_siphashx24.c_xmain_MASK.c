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

/* Variables and functions */
 int MAXLEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int crypto_shorthash_siphash24_BYTES ; 
 int crypto_shorthash_siphash24_KEYBYTES ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,unsigned long long,unsigned char*) ; 
 int crypto_shorthash_siphashx24_BYTES ; 
 int crypto_shorthash_siphashx24_KEYBYTES ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

int
FUNC5(void)
{
    unsigned char in[MAXLEN];
    unsigned char out[crypto_shorthash_siphashx24_BYTES];
    unsigned char k[crypto_shorthash_siphashx24_KEYBYTES];
    size_t        i;
    size_t        j;

    for (i = 0; i < crypto_shorthash_siphashx24_KEYBYTES; ++i) {
        k[i] = (unsigned char) i;
    }
    for (i = 0; i < MAXLEN; ++i) {
        in[i] = (unsigned char) i;
        FUNC1(out, in, (unsigned long long) i, k);
        for (j = 0; j < crypto_shorthash_siphashx24_BYTES; ++j) {
            FUNC4("%02x", (unsigned int) out[j]);
        }
        FUNC4("\n");
    }
    FUNC0(crypto_shorthash_siphashx24_KEYBYTES >= crypto_shorthash_siphash24_KEYBYTES);
    FUNC0(crypto_shorthash_siphashx24_BYTES > crypto_shorthash_siphash24_BYTES);
    FUNC0(FUNC2() == crypto_shorthash_siphashx24_BYTES);
    FUNC0(FUNC3() == crypto_shorthash_siphashx24_KEYBYTES);

    return 0;
}