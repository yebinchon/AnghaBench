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
 scalar_t__* bobpk ; 
 int /*<<< orphan*/  bobsk ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

int
FUNC2(void)
{
    int i;

    FUNC0(bobpk, bobsk);

    for (i = 0; i < 32; ++i) {
        if (i > 0) {
            FUNC1(",");
        } else {
            FUNC1(" ");
        }
        FUNC1("0x%02x", (unsigned int) bobpk[i]);
        if (i % 8 == 7) {
            FUNC1("\n");
        }
    }
    return 0;
}