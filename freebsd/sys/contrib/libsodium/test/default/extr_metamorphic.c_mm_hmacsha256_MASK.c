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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  crypto_auth_hmacsha256_state ;

/* Variables and functions */
 int /*<<< orphan*/  MAXLEN ; 
 int MAX_ITER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,size_t,unsigned char*) ; 
 size_t crypto_auth_hmacsha256_BYTES ; 
 size_t crypto_auth_hmacsha256_KEYBYTES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 scalar_t__ FUNC6 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,size_t) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*) ; 
 scalar_t__ FUNC10 (size_t) ; 

__attribute__((used)) static void
FUNC11(void)
{
    crypto_auth_hmacsha256_state st;
    unsigned char *h, *h2;
    unsigned char *k;
    unsigned char *m;
    size_t         mlen;
    size_t         l1, l2;
    int            i;

    for (i = 0; i < MAX_ITER; i++) {
        mlen = FUNC8(MAXLEN);
        m = (unsigned char *) FUNC10(mlen);
        k = (unsigned char *) FUNC10(crypto_auth_hmacsha256_KEYBYTES);
        h = (unsigned char *) FUNC10(crypto_auth_hmacsha256_BYTES);
        h2 = (unsigned char *) FUNC10(crypto_auth_hmacsha256_BYTES);

        FUNC4(k);
        FUNC7(m, mlen);

        FUNC3(&st, k, crypto_auth_hmacsha256_KEYBYTES);
        l1 = FUNC8((uint32_t) mlen);
        l2 = FUNC8((uint32_t) (mlen - l1));
        FUNC5(&st, m, l1);
        FUNC5(&st, m + l1, l2);
        FUNC5(&st, m + l1 + l2, mlen - l1 - l2);
        FUNC2(&st, h);

        FUNC1(h2, m, mlen, k);

        FUNC0(FUNC6(h, h2, crypto_auth_hmacsha256_BYTES) == 0);

        FUNC9(h2);
        FUNC9(h);
        FUNC9(k);
        FUNC9(m);
    }
}