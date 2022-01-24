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
 size_t* c ; 
 int /*<<< orphan*/  FUNC0 (size_t*,scalar_t__*,size_t,scalar_t__*,int /*<<< orphan*/ ) ; 
 size_t crypto_secretbox_NONCEBYTES ; 
 size_t crypto_secretbox_ZEROBYTES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__*,size_t*,size_t,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  k ; 
 scalar_t__* m ; 
 scalar_t__* m2 ; 
 scalar_t__* n ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 size_t FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,size_t) ; 

int
FUNC6(void)
{
    size_t mlen;
    size_t i;
    int    caught;

    for (mlen = 0; mlen < 1000 && mlen + crypto_secretbox_ZEROBYTES < sizeof m;
         ++mlen) {
        FUNC1(k);
        FUNC5(n, crypto_secretbox_NONCEBYTES);
        FUNC5(m + crypto_secretbox_ZEROBYTES, mlen);
        FUNC0(c, m, mlen + crypto_secretbox_ZEROBYTES, n, k);
        caught = 0;
        while (caught < 10) {
            c[FUNC4() % (mlen + crypto_secretbox_ZEROBYTES)] = FUNC4();
            if (FUNC2(m2, c, mlen + crypto_secretbox_ZEROBYTES,
                                      n, k) == 0) {
                for (i = 0; i < mlen + crypto_secretbox_ZEROBYTES; ++i) {
                    if (m2[i] != m[i]) {
                        FUNC3("forgery\n");
                        return 100;
                    }
                }
            } else {
                ++caught;
            }
        }
    }
    return 0;
}