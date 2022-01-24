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
 int BCM2835_PASSWORD ; 
 int BCM2835_PASSWORD_SHIFT ; 
 int /*<<< orphan*/  BCM2835_RSTC_REG ; 
 int BCM2835_RSTC_WRCFG_CLR ; 
 int BCM2835_RSTC_WRCFG_FULL_RESET ; 
 int /*<<< orphan*/  BCM2835_WDOG_REG ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * bcmwd_lsc ; 

void
FUNC2(void)
{

	if (bcmwd_lsc == NULL)
		return;

	FUNC1(bcmwd_lsc, BCM2835_WDOG_REG,
	    (BCM2835_PASSWORD << BCM2835_PASSWORD_SHIFT) | 10);

	FUNC1(bcmwd_lsc, BCM2835_RSTC_REG,
	    (FUNC0(bcmwd_lsc, BCM2835_RSTC_REG) & BCM2835_RSTC_WRCFG_CLR) |
		(BCM2835_PASSWORD << BCM2835_PASSWORD_SHIFT) |
		BCM2835_RSTC_WRCFG_FULL_RESET);
}