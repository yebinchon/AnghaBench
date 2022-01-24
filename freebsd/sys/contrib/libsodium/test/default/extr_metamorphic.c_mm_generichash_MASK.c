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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  crypto_generichash_state ;

/* Variables and functions */
 scalar_t__ MAXLEN ; 
 int MAX_ITER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,size_t,unsigned char*,size_t,unsigned char*,size_t) ; 
 scalar_t__ crypto_generichash_BYTES_MAX ; 
 size_t crypto_generichash_BYTES_MIN ; 
 scalar_t__ crypto_generichash_KEYBYTES_MAX ; 
 size_t crypto_generichash_KEYBYTES_MIN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 scalar_t__ FUNC5 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,size_t) ; 
 size_t FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 scalar_t__ FUNC9 (size_t) ; 

__attribute__((used)) static void
FUNC10(void)
{
    crypto_generichash_state st;
    unsigned char *h, *h2;
    unsigned char *k;
    unsigned char *m;
    size_t         hlen;
    size_t         klen;
    size_t         mlen;
    size_t         l1, l2;
    int            i;

    for (i = 0; i < MAX_ITER; i++) {
        mlen = FUNC7(MAXLEN);
        m = (unsigned char *) FUNC9(mlen);
        klen = FUNC7(crypto_generichash_KEYBYTES_MAX -
                                   crypto_generichash_KEYBYTES_MIN + 1U)
            + crypto_generichash_KEYBYTES_MIN;
        k = (unsigned char *) FUNC9(klen);
        hlen = FUNC7(crypto_generichash_BYTES_MAX -
                                   crypto_generichash_BYTES_MIN + 1U)
            + crypto_generichash_BYTES_MIN;
        h = (unsigned char *) FUNC9(hlen);
        h2 = (unsigned char *) FUNC9(hlen);

        FUNC6(k, klen);
        FUNC6(m, mlen);

        FUNC3(&st, k, klen, hlen);
        l1 = FUNC7((uint32_t) mlen);
        l2 = FUNC7((uint32_t) (mlen - l1));
        FUNC4(&st, m, l1);
        FUNC4(&st, m + l1, l2);
        FUNC4(&st, m + l1 + l2, mlen - l1 - l2);
        FUNC2(&st, h, hlen);

        FUNC1(h2, hlen, m, mlen, k, klen);

        FUNC0(FUNC5(h, h2, hlen) == 0);

        FUNC8(h2);
        FUNC8(h);
        FUNC8(k);
        FUNC8(m);
    }
}