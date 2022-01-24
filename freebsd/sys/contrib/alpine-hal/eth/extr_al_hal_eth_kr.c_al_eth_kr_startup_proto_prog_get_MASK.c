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
typedef  int /*<<< orphan*/  uint16_t ;
struct al_hal_eth_adapter {int dummy; } ;
typedef  enum al_eth_an_lt_lane { ____Placeholder_al_eth_an_lt_lane } al_eth_an_lt_lane ;
typedef  int al_bool ;

/* Variables and functions */
 int /*<<< orphan*/  AL_ETH_KR_PMD_STATUS ; 
 int /*<<< orphan*/  AL_ETH_KR_PMD_STATUS_RECEIVER_START_UP_PROTO_PROG_SHIFT ; 
 int /*<<< orphan*/  AL_ETH_LT_REGS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct al_hal_eth_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

al_bool FUNC2(struct al_hal_eth_adapter *adapter,
					 enum al_eth_an_lt_lane lane)
{
	uint16_t reg;

	reg = FUNC1(adapter, AL_ETH_KR_PMD_STATUS, AL_ETH_LT_REGS, lane);

	return (FUNC0(
		reg, AL_ETH_KR_PMD_STATUS_RECEIVER_START_UP_PROTO_PROG_SHIFT) != 0);
}