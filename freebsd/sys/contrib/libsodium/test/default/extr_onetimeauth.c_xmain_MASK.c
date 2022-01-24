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
typedef  int /*<<< orphan*/  crypto_onetimeauth_state ;

/* Variables and functions */
 scalar_t__* a ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ c ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 () ; 
 unsigned int FUNC6 () ; 
 unsigned int FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  rs ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,char*) ; 

int
FUNC15(void)
{
    crypto_onetimeauth_state st;
    int                      i;

    FUNC0(FUNC10() == sizeof st);
    FUNC1(a, c, 131, rs);
    for (i = 0; i < 16; ++i) {
        FUNC13(",0x%02x", (unsigned int) a[i]);
        if (i % 8 == 7)
            FUNC13("\n");
    }

    FUNC12(a, 0, sizeof a);
    FUNC4(&st, rs);
    FUNC11(&st, c, 100);
    FUNC11(&st, c, 0);
    FUNC11(&st, c + 100, 31);
    FUNC3(&st, a);
    for (i = 0; i < 16; ++i) {
        FUNC13(",0x%02x", (unsigned int) a[i]);
        if (i % 8 == 7)
            FUNC13("\n");
    }

    FUNC0(FUNC2() > 0U);
    FUNC0(FUNC5() > 0U);
    FUNC0(FUNC14(FUNC9(), "poly1305") == 0);
    FUNC0(FUNC6() == FUNC2());
    FUNC0(FUNC7() ==
           FUNC5());
    FUNC0(FUNC10() > 0);
    FUNC0(FUNC10() == FUNC8());

    return 0;
}