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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__* c ; 
 int FUNC1 (scalar_t__*,scalar_t__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 () ; 
 unsigned int FUNC3 () ; 
 unsigned int FUNC4 () ; 
 unsigned int FUNC5 () ; 
 unsigned int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 unsigned int FUNC8 () ; 
 unsigned int FUNC9 () ; 
 unsigned int FUNC10 () ; 
 unsigned int FUNC11 () ; 
 unsigned int FUNC12 () ; 
 unsigned int FUNC13 () ; 
 unsigned int FUNC14 () ; 
 int /*<<< orphan*/  firstkey ; 
 scalar_t__* m ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  nonce ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,char*) ; 

int
FUNC18(void)
{
    int i;

    FUNC1(c, m, 163, nonce, firstkey);
    for (i = 16; i < 163; ++i) {
        FUNC16(",0x%02x", (unsigned int) c[i]);
        if (i % 8 == 7)
            FUNC16("\n");
    }
    FUNC16("\n");

    FUNC15(c, m, 163);
    FUNC1(c, c, 163, nonce, firstkey);
    for (i = 16; i < 163; ++i) {
        FUNC16(",0x%02x", (unsigned int) c[i]);
        if (i % 8 == 7)
            FUNC16("\n");
    }
    FUNC16("\n");

    FUNC0(FUNC1(c, c, 31, nonce, firstkey) == -1);
    FUNC0(FUNC1(c, c, 12, nonce, firstkey) == -1);
    FUNC0(FUNC1(c, c, 1, nonce, firstkey) == -1);
    FUNC0(FUNC1(c, c, 0, nonce, firstkey) == -1);

    FUNC0(FUNC3() > 0U);
    FUNC0(FUNC6() > 0U);
    FUNC0(FUNC14() > 0U);
    FUNC0(FUNC2() > 0U);
    FUNC0(FUNC4() > 0U);
    FUNC0(FUNC5() > 0U);
    FUNC0(FUNC17(FUNC7(), "xsalsa20poly1305") == 0);
    FUNC0(FUNC3() ==
           FUNC9());
    FUNC0(FUNC6() ==
           FUNC12());
    FUNC0(FUNC14() ==
           FUNC13());
    FUNC0(FUNC2() ==
           FUNC8());
    FUNC0(FUNC4() ==
           FUNC10());
    FUNC0(FUNC5() ==
           FUNC11());

    return 0;
}