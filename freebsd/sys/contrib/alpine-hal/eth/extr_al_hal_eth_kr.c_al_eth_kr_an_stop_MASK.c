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
struct al_hal_eth_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AL_ETH_AN_REGS ; 
 int /*<<< orphan*/  AL_ETH_AN__LT_LANE_0 ; 
 int /*<<< orphan*/  AL_ETH_KR_AN_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct al_hal_eth_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct al_hal_eth_adapter *adapter)
{
	FUNC0(adapter, AL_ETH_KR_AN_CONTROL, AL_ETH_AN_REGS,
			       AL_ETH_AN__LT_LANE_0, 0);
}