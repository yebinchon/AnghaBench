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
 int /*<<< orphan*/  c ; 
 int FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  firstkey ; 
 scalar_t__* m ; 
 int /*<<< orphan*/  nonce ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

int
FUNC3(void)
{
    int i;

    if (FUNC1(m, c, 163, nonce, firstkey) == 0) {
        for (i = 32; i < 163; ++i) {
            FUNC2(",0x%02x", (unsigned int) m[i]);
            if (i % 8 == 7)
                FUNC2("\n");
        }
        FUNC2("\n");
    }
    FUNC0(FUNC1(m, c, 31, nonce, firstkey) == -1);
    FUNC0(FUNC1(m, c, 16, nonce, firstkey) == -1);
    FUNC0(FUNC1(m, c, 1, nonce, firstkey) == -1);
    FUNC0(FUNC1(m, c, 0, nonce, firstkey) == -1);

    return 0;
}