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
 int /*<<< orphan*/  FUNC1 (int*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 () ; 
 unsigned int FUNC4 () ; 
 unsigned int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__*,int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int* h ; 
 int /*<<< orphan*/  noncesuffix ; 
 scalar_t__* output ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  secondkey ; 

int
FUNC8(void)
{
    int i;
    FUNC2(output, sizeof output, noncesuffix, secondkey);
    FUNC1(h, output, sizeof output);
    for (i = 0; i < 32; ++i)
        FUNC7("%02x", h[i]);
    FUNC7("\n");

    FUNC0(sizeof output > 4000);

    FUNC6(output, output, 4000, noncesuffix, 0U,
                                 secondkey);
    for (i = 0; i < 4000; ++i)
        FUNC0(output[i] == 0);

    FUNC6(output, output, 4000, noncesuffix, 1U,
                                 secondkey);
    FUNC1(h, output, sizeof output);
    for (i = 0; i < 32; ++i)
        FUNC7("%02x", h[i]);
    FUNC7("\n");

    FUNC0(FUNC3() > 0U);
    FUNC0(FUNC5() > 0U);
    FUNC0(FUNC4() > 0U);

    return 0;
}