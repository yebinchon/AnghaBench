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
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 () ; 
 unsigned int FUNC4 () ; 
 unsigned int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 unsigned int FUNC7 () ; 
 unsigned int FUNC8 () ; 
 unsigned int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,scalar_t__*,int,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  firstkey ; 
 scalar_t__* h ; 
 char* hex ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int,int) ; 
 int /*<<< orphan*/  nonce ; 
 scalar_t__* output ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,scalar_t__*,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,char*) ; 

int
FUNC16(void)
{
    int i;

    FUNC13(output, sizeof output);
    FUNC2(output, sizeof output, nonce, firstkey);
    FUNC1(h, output, sizeof output);
    FUNC14(hex, sizeof hex, h, sizeof h);
    FUNC12("%s\n", hex);

    FUNC0(sizeof output > 4000);

    FUNC10(output, output, 4000, nonce, 0U, firstkey);
    for (i = 0; i < 4000; i++) {
        FUNC0(output[i] == 0);
    }
    FUNC10(output, output, 4000, nonce, 1U, firstkey);
    FUNC1(h, output, sizeof output);
    FUNC14(hex, sizeof hex, h, sizeof h);
    FUNC12("%s\n", hex);

    for (i = 0; i < 64; i++) {
        FUNC11(output, i, 64);
        FUNC2(output, (int) (i & 0xff), nonce, firstkey);
        FUNC14(hex, sizeof hex, output, 64);
        FUNC12("%s\n", hex);
    }

    FUNC11(output, 0, 192);
    FUNC10(output, output, 192, nonce,
                                  (1ULL << 32) - 1ULL, firstkey);
    FUNC14(hex, 192 * 2 + 1, output, 192);
    FUNC12("%s\n", hex);

    FUNC0(FUNC3() > 0U);
    FUNC0(FUNC5() > 0U);
    FUNC0(FUNC4() > 0U);
    FUNC0(FUNC15(FUNC6(), "xsalsa20") == 0);
    FUNC0(FUNC3() == FUNC7());
    FUNC0(FUNC5() == FUNC9());
    FUNC0(FUNC4() == FUNC8());

    return 0;
}