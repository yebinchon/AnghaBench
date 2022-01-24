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
 int /*<<< orphan*/  alicepk ; 
 int /*<<< orphan*/  alicesk ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  bobpk ; 
 int /*<<< orphan*/  bobsk ; 
 int FUNC1 (unsigned char*,unsigned char*,size_t,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t crypto_box_NONCEBYTES ; 
 size_t crypto_box_ZEROBYTES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned char*,unsigned char*,size_t,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned char* n ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 size_t FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 scalar_t__ FUNC8 (size_t) ; 

int
FUNC9(void)
{
    unsigned char *m;
    unsigned char *c;
    unsigned char *m2;
    size_t         mlen;
    size_t         mlen_max = 1000;
    size_t         i;
    int            faults;
    int            ret;

    m  = (unsigned char *) FUNC8(mlen_max);
    c  = (unsigned char *) FUNC8(mlen_max);
    m2 = (unsigned char *) FUNC8(mlen_max);
    FUNC2(alicepk, alicesk);
    FUNC2(bobpk, bobsk);
    for (mlen = 0; mlen + crypto_box_ZEROBYTES <= mlen_max; mlen++) {
        FUNC6(n, crypto_box_NONCEBYTES);
        FUNC6(m + crypto_box_ZEROBYTES, mlen);
        ret = FUNC1(c, m, mlen + crypto_box_ZEROBYTES, n, bobpk, alicesk);
        FUNC0(ret == 0);
#ifdef BROWSER_TESTS
        faults = 1;
#else
        faults = 5;
#endif
        while (faults > 0) {
            c[FUNC5() % (mlen + crypto_box_ZEROBYTES)] = FUNC5();
            if (FUNC3(m2, c, mlen + crypto_box_ZEROBYTES, n, alicepk,
                                bobsk) == 0) {
                for (i = 0; i < mlen + crypto_box_ZEROBYTES; ++i) {
                    if (m2[i] != m[i]) {
                        FUNC4("forgery\n");
                        return 100;
                    }
                }
            } else {
                faults--;
            }
        }
    }
    FUNC7(m);
    FUNC7(c);
    FUNC7(m2);

    return 0;
}