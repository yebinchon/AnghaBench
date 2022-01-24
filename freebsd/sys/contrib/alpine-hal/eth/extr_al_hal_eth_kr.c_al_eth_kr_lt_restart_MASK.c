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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AL_ETH_KR_PMD_CONTROL ; 
 int /*<<< orphan*/  AL_ETH_KR_PMD_CONTROL_ENABLE ; 
 int /*<<< orphan*/  AL_ETH_KR_PMD_CONTROL_RESTART ; 
 int /*<<< orphan*/  AL_ETH_LT_REGS ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct al_hal_eth_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

void FUNC3(struct al_hal_eth_adapter *adapter,
			  enum al_eth_an_lt_lane lane)
{
	FUNC1("[%s]: KR LT Restart Link Training.\n", adapter->name);

	FUNC2(adapter, AL_ETH_KR_PMD_CONTROL, AL_ETH_LT_REGS,
			       lane, (FUNC0(AL_ETH_KR_PMD_CONTROL_ENABLE) |
				      FUNC0(AL_ETH_KR_PMD_CONTROL_RESTART)));
}