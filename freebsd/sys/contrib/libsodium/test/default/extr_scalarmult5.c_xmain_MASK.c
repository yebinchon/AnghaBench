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
 int FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* k ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

int
FUNC3(void)
{
    int i;
    int ret;

    ret = FUNC1(k, alicesk, bobpk);
    FUNC0(ret == 0);

    for (i = 0; i < 32; ++i) {
        if (i > 0) {
            FUNC2(",");
        } else {
            FUNC2(" ");
        }
        FUNC2("0x%02x", (unsigned int) k[i]);
        if (i % 8 == 7) {
            FUNC2("\n");
        }
    }
    return 0;
}