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
 int /*<<< orphan*/  PNP_CONFIG_CONTROL ; 
 int /*<<< orphan*/  _PNP_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void
FUNC2()
{
    int cur, i;

    FUNC1(PNP_CONFIG_CONTROL, 0x2);

    /* Reset the LSFR */
    FUNC0(_PNP_ADDRESS, 0);
    FUNC0(_PNP_ADDRESS, 0); /* yes, we do need it twice! */

    cur = 0x6a;

    for (i = 0; i < 32; i++) {
	FUNC0(_PNP_ADDRESS, cur);
	cur = (cur >> 1) | (((cur ^ (cur >> 1)) << 7) & 0xff);
    }
}