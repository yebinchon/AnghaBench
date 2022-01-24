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
typedef  int /*<<< orphan*/  uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct al_eth_fwd_vid_table_entry {int dummy; } ;
typedef  scalar_t__ al_bool ;
struct TYPE_3__ {int /*<<< orphan*/  default_vlan; int /*<<< orphan*/  vid_table_def; } ;
struct TYPE_4__ {TYPE_1__ rfw; } ;

/* Variables and functions */
 int /*<<< orphan*/  EC_RFW_VID_TABLE_DEF_SEL ; 
 int /*<<< orphan*/  FUNC0 (struct al_eth_fwd_vid_table_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(struct al_hal_eth_adapter *adapter, al_bool use_table,
			      struct al_eth_fwd_vid_table_entry *default_entry,
			      uint32_t default_vlan)
{
	uint32_t reg;

	reg = FUNC0(default_entry);
	if (use_table)
		reg |= EC_RFW_VID_TABLE_DEF_SEL;
	else
		reg &= ~EC_RFW_VID_TABLE_DEF_SEL;
	FUNC1(&adapter->ec_regs_base->rfw.vid_table_def, reg);
	FUNC1(&adapter->ec_regs_base->rfw.default_vlan, default_vlan);

	return 0;
}