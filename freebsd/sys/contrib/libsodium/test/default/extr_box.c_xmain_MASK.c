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
 int /*<<< orphan*/  alicesk ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  bobpk ; 
 scalar_t__* c ; 
 int FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int crypto_box_BEFORENMBYTES ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC3 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 () ; 
 unsigned int FUNC5 () ; 
 unsigned int FUNC6 () ; 
 unsigned int FUNC7 () ; 
 unsigned int FUNC8 () ; 
 unsigned int FUNC9 () ; 
 unsigned int FUNC10 () ; 
 unsigned int FUNC11 () ; 
 unsigned int FUNC12 () ; 
 unsigned int FUNC13 () ; 
 unsigned int FUNC14 () ; 
 unsigned int FUNC15 () ; 
 unsigned int FUNC16 () ; 
 unsigned int FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 unsigned int FUNC19 () ; 
 unsigned int FUNC20 () ; 
 unsigned int FUNC21 () ; 
 unsigned int FUNC22 () ; 
 int /*<<< orphan*/  m ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nonce ; 
 int /*<<< orphan*/  FUNC24 (char*,...) ; 
 int /*<<< orphan*/  small_order_p ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,char*) ; 

int
FUNC26(void)
{
    unsigned char k[crypto_box_BEFORENMBYTES];
    int           i;
    int           ret;

    ret = FUNC1(c, m, 163, nonce, bobpk, alicesk);
    FUNC0(ret == 0);
    for (i = 16; i < 163; ++i) {
        FUNC24(",0x%02x", (unsigned int) c[i]);
        if (i % 8 == 7)
            FUNC24("\n");
    }
    FUNC24("\n");

    ret = FUNC1(c, m, 163, nonce, small_order_p, alicesk);
    FUNC0(ret == -1);

    FUNC23(c, 0, sizeof c);

    ret = FUNC3(k, bobpk, alicesk);
    FUNC0(ret == 0);
    FUNC2(c, m, 163, nonce, k);
    for (i = 16; i < 163; ++i) {
        FUNC24(",0x%02x", (unsigned int) c[i]);
        if (i % 8 == 7)
            FUNC24("\n");
    }
    FUNC24("\n");

    ret = FUNC3(k, small_order_p, alicesk);
    FUNC0(ret == -1);

    FUNC0(FUNC21() > 0U);
    FUNC0(FUNC19() > 0U);
    FUNC0(FUNC20() > 0U);
    FUNC0(FUNC4() > 0U);
    FUNC0(FUNC17() > 0U);
    FUNC0(FUNC22() > 0U);
    FUNC0(FUNC5() > 0U);
    FUNC0(FUNC15() > 0U);
    FUNC0(FUNC16() > 0U);
    FUNC0(FUNC25(FUNC18(), "curve25519xsalsa20poly1305") == 0);
    FUNC0(FUNC13() ==
           FUNC21());
    FUNC0(FUNC11() ==
           FUNC19());
    FUNC0(FUNC12() ==
           FUNC20());
    FUNC0(FUNC6() ==
           FUNC4());
    FUNC0(FUNC10() ==
           FUNC17());
    FUNC0(FUNC14() ==
           FUNC22());
    FUNC0(FUNC7() ==
           FUNC5());
    FUNC0(FUNC8() ==
           FUNC15());
    FUNC0(FUNC9() ==
           FUNC16());

    return 0;
}