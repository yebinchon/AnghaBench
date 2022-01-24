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
typedef  scalar_t__ uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct TYPE_3__ {int /*<<< orphan*/  fsm_table_data; int /*<<< orphan*/  fsm_table_addr; } ;
struct TYPE_4__ {TYPE_1__ rfw; } ;

/* Variables and functions */
 scalar_t__ AL_ETH_RX_FSM_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC2(struct al_hal_eth_adapter *adapter, uint32_t idx, uint32_t entry)
{

	FUNC0(idx < AL_ETH_RX_FSM_TABLE_SIZE); /*valid FSM index*/


	FUNC1(&adapter->ec_regs_base->rfw.fsm_table_addr, idx);
	FUNC1(&adapter->ec_regs_base->rfw.fsm_table_data, entry);
	return 0;
}