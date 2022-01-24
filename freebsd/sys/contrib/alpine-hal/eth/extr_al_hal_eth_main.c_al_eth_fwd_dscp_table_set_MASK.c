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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct TYPE_3__ {int /*<<< orphan*/  dscp_table_data; int /*<<< orphan*/  dscp_table_addr; } ;
struct TYPE_4__ {TYPE_1__ rfw; } ;

/* Variables and functions */
 scalar_t__ AL_ETH_FWD_DSCP_TABLE_NUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC2(struct al_hal_eth_adapter *adapter, uint32_t idx, uint8_t prio)
{

	FUNC0(idx < AL_ETH_FWD_DSCP_TABLE_NUM); /* valid DSCP index */


	FUNC1(&adapter->ec_regs_base->rfw.dscp_table_addr, idx);
	FUNC1(&adapter->ec_regs_base->rfw.dscp_table_data, prio);
	return 0;
}