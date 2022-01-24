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
typedef  int /*<<< orphan*/  crypto_generichash_state ;

/* Variables and functions */
 int MAXLEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int crypto_generichash_BYTES_MAX ; 
 unsigned int crypto_generichash_KEYBYTES ; 
 int crypto_generichash_KEYBYTES_MAX ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char*,unsigned int,unsigned int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

int
FUNC8(void)
{
#define MAXLEN 64
    crypto_generichash_state *st;
    unsigned char            in[MAXLEN];
    unsigned char            out[crypto_generichash_BYTES_MAX];
    unsigned char            k[crypto_generichash_KEYBYTES_MAX];
    size_t                   h, i, j;

    FUNC0(FUNC3() >= sizeof *st);
    st = (crypto_generichash_state *)
        FUNC7(FUNC3());
    for (h = 0; h < crypto_generichash_KEYBYTES_MAX; ++h) {
        k[h] = (unsigned char) h;
    }
    for (i = 0; i < MAXLEN; ++i) {
        in[i] = (unsigned char) i;
        if (FUNC2(st, k,
                                    1 + i % crypto_generichash_KEYBYTES_MAX,
                                    1 + i % crypto_generichash_BYTES_MAX) != 0) {
            FUNC5("crypto_generichash_init()\n");
            return 1;
        }
        FUNC4(st, in, i);
        FUNC4(st, in, i);
        FUNC4(st, in, i);
        if (FUNC1(st, out,
                                     1 + i % crypto_generichash_BYTES_MAX) != 0) {
            FUNC5("crypto_generichash_final() should have returned 0\n");
        }
        for (j = 0; j < 1 + i % crypto_generichash_BYTES_MAX; ++j) {
            FUNC5("%02x", (unsigned int) out[j]);
        }
        FUNC5("\n");
        if (FUNC1(st, out,
                                     1 + i % crypto_generichash_BYTES_MAX) != -1) {
            FUNC5("crypto_generichash_final() should have returned -1\n");
        }
    }

    FUNC0(FUNC2(st, k, sizeof k, 0U) == -1);
    FUNC0(FUNC2(st, k, sizeof k,
                                   crypto_generichash_BYTES_MAX + 1U) == -1);
    FUNC0(FUNC2(st, k, crypto_generichash_KEYBYTES_MAX + 1U,
                                   sizeof out) == -1);
    FUNC0(FUNC2(st, k, 0U, sizeof out) == 0);
    FUNC0(FUNC2(st, k, 1U, sizeof out) == 0);
    FUNC0(FUNC2(st, NULL, 1U, 0U) == -1);
    FUNC0(FUNC2(st, NULL, crypto_generichash_KEYBYTES,
                                   1U) == 0);
    FUNC0(FUNC2(st, NULL, crypto_generichash_KEYBYTES,
                                   0U) == -1);

    FUNC6(st);

    return 0;
}