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
 int /*<<< orphan*/  BYPASS_EN ; 
 int /*<<< orphan*/  WDT_BP_CLR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int const) ; 

__attribute__((used)) static int FUNC4(void)
{
    const int CLR_PULSE = 100;  /* Longer than 100 ns (on CPUs up to 1 GHz) */

    //Clear GPIO 6
    FUNC0(BYPASS_EN);

    //Disable WDT
    FUNC2(0);

    //GPIO(7) Send a low pulse
    FUNC0(WDT_BP_CLR);
    FUNC3(CLR_PULSE);
    FUNC1(WDT_BP_CLR);
    return 0;
}