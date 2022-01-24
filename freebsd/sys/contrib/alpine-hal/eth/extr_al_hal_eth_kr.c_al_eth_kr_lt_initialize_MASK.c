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
struct al_hal_eth_adapter {int /*<<< orphan*/  name; } ;
typedef  enum al_eth_an_lt_lane { ____Placeholder_al_eth_an_lt_lane } al_eth_an_lt_lane ;

/* Variables and functions */
 int /*<<< orphan*/  AL_ETH_KR_PMD_LD_COEF_UP ; 
 int /*<<< orphan*/  AL_ETH_KR_PMD_LD_STATUS_REPORT ; 
 int /*<<< orphan*/  AL_ETH_KR_PMD_STATUS ; 
 int /*<<< orphan*/  AL_ETH_LT_REGS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct al_hal_eth_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct al_hal_eth_adapter*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct al_hal_eth_adapter*,int) ; 

void FUNC4(struct al_hal_eth_adapter *adapter,
			     enum al_eth_an_lt_lane lane)
{
	FUNC0("[%s]: KR LT Initialize.\n", adapter->name);

	/* Reset LT state machine */
	FUNC3(adapter, lane);

	/* clear receiver status */
	FUNC1(adapter, AL_ETH_KR_PMD_STATUS, AL_ETH_LT_REGS, lane, 0);

	/* Coefficient Update to all zero (no command, hold) */
	FUNC1(adapter, AL_ETH_KR_PMD_LD_COEF_UP, AL_ETH_LT_REGS, lane, 0);
	/* Coefficient Status to all zero (not_updated) */
	FUNC1(adapter, AL_ETH_KR_PMD_LD_STATUS_REPORT, AL_ETH_LT_REGS, lane, 0);

	/* start */
	FUNC2(adapter, lane);
}