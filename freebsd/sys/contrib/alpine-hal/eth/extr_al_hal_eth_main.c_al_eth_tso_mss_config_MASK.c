#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct TYPE_4__ {TYPE_1__* tso_sel; } ;
struct TYPE_3__ {int /*<<< orphan*/  mss; } ;

/* Variables and functions */
 scalar_t__ AL_ETH_TSO_MSS_MAX_VAL ; 
 scalar_t__ AL_ETH_TSO_MSS_MIN_VAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC2(struct al_hal_eth_adapter *adapter, uint8_t idx, uint32_t mss_val)
{

	FUNC0(idx <= 8); /*valid MSS index*/
	FUNC0(mss_val <= AL_ETH_TSO_MSS_MAX_VAL); /*valid MSS val*/
	FUNC0(mss_val >= AL_ETH_TSO_MSS_MIN_VAL); /*valid MSS val*/

	FUNC1(&adapter->ec_regs_base->tso_sel[idx].mss, mss_val);
	return 0;
}