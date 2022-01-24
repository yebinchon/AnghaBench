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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  bobsk ; 
 int /*<<< orphan*/  c ; 
 int crypto_box_BEFORENMBYTES ; 
 int FUNC1 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__* m ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nonce ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  small_order_p ; 

int
FUNC6(void)
{
    unsigned char k[crypto_box_BEFORENMBYTES];
    int           i;
    int           ret;

    if (FUNC2(m, c, 163, nonce, alicepk, bobsk) == 0) {
        for (i = 32; i < 163; ++i) {
            FUNC5(",0x%02x", (unsigned int) m[i]);
            if (i % 8 == 7)
                FUNC5("\n");
        }
        FUNC5("\n");
    }
    ret = FUNC2(m, c, 163, nonce, small_order_p, bobsk);
    FUNC0(ret == -1);

    FUNC4(m, 0, sizeof m);
    ret = FUNC1(k, small_order_p, bobsk);
    FUNC0(ret == -1);
    ret = FUNC1(k, alicepk, bobsk);
    FUNC0(ret == 0);
    if (FUNC3(m, c, 163, nonce, k) == 0) {
        for (i = 32; i < 163; ++i) {
            FUNC5(",0x%02x", (unsigned int) m[i]);
            if (i % 8 == 7)
                FUNC5("\n");
        }
        FUNC5("\n");
    }
    return 0;
}