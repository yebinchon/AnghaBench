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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int CCMR_CCGR_NSOURCE ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ccm_softc ; 

int
FUNC3(int clk_src)
{
	uint32_t reg;

	reg = FUNC2(ccm_softc,
	    FUNC0(FUNC1(clk_src)));
	return ((reg >> (clk_src % CCMR_CCGR_NSOURCE) * 2) & 0x03);
}