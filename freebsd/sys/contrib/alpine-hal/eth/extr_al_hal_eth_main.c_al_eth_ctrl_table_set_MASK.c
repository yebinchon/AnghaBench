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
struct al_eth_fwd_ctrl_table_index {int dummy; } ;
struct al_eth_fwd_ctrl_table_entry {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ctrl_table_data; int /*<<< orphan*/  ctrl_table_addr; } ;
struct TYPE_4__ {TYPE_1__ rfw; } ;

/* Variables and functions */
 scalar_t__ AL_ETH_RX_CTRL_TABLE_SIZE ; 
 scalar_t__ FUNC0 (struct al_eth_fwd_ctrl_table_index*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct al_eth_fwd_ctrl_table_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC3(struct al_hal_eth_adapter *adapter,
			  struct al_eth_fwd_ctrl_table_index *index,
			  struct al_eth_fwd_ctrl_table_entry *entry)
{
	uint32_t val = FUNC1(entry);
	uint32_t i;

	for (i = 0; i < AL_ETH_RX_CTRL_TABLE_SIZE; i++) {
		if (FUNC0(index, i)) {
			FUNC2(&adapter->ec_regs_base->rfw.ctrl_table_addr, i);
			FUNC2(&adapter->ec_regs_base->rfw.ctrl_table_data, val);
		}
	}
	return 0;
}