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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct al_hal_eth_adapter {int /*<<< orphan*/  name; } ;
typedef  enum al_eth_an_lt_lane { ____Placeholder_al_eth_an_lt_lane } al_eth_an_lt_lane ;
typedef  int /*<<< orphan*/  al_bool ;

/* Variables and functions */
 int /*<<< orphan*/  AL_ETH_KR_PMD_STATUS ; 
 int /*<<< orphan*/  AL_ETH_KR_PMD_STATUS_FAILURE_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_KR_PMD_STATUS_RECEIVER_FRAME_LOCK_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_LT_REGS ; 
 int /*<<< orphan*/  AL_FALSE ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AL_TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct al_hal_eth_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

al_bool FUNC5(struct al_hal_eth_adapter *adapter,
				     enum al_eth_an_lt_lane lane,
				     uint32_t timeout)
{
	uint32_t loop;
	uint16_t reg = 0;

	for (loop = 0; loop < timeout; loop++) {
		reg = FUNC2(adapter, AL_ETH_KR_PMD_STATUS, AL_ETH_LT_REGS, lane);

		if (FUNC0(reg, AL_ETH_KR_PMD_STATUS_FAILURE_SHIFT)) {
			FUNC3("[%s]: Failed on Training Failure."
			       " loops %d PMD STATUS 0x%04x\n",
			       adapter->name, loop, reg);

			return AL_FALSE;
		}
		if (FUNC0(reg,
			AL_ETH_KR_PMD_STATUS_RECEIVER_FRAME_LOCK_SHIFT)) {
			FUNC1("[%s]: Frame lock received."
			       " loops %d PMD STATUS 0x%04x\n",
			       adapter->name, loop, reg);

			return AL_TRUE;
		}
		FUNC4(1);
	}
	FUNC3("[%s]: Failed on timeout. PMD STATUS 0x%04x\n",
			adapter->name, reg);

	return AL_FALSE;
}