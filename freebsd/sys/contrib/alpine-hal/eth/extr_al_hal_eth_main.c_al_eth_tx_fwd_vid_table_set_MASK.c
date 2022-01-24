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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct al_hal_eth_adapter {TYPE_1__* ec_regs_base; } ;
typedef  int /*<<< orphan*/  al_bool ;
struct TYPE_4__ {int /*<<< orphan*/  tx_vid_table_data; int /*<<< orphan*/  tx_vid_table_addr; } ;
struct TYPE_3__ {TYPE_2__ tfw; } ;

/* Variables and functions */
 scalar_t__ AL_ETH_FWD_VID_TABLE_NUM ; 
 int /*<<< orphan*/  AL_ETH_TX_VLAN_TABLE_FWD_TO_MAC ; 
 int /*<<< orphan*/  AL_ETH_TX_VLAN_TABLE_UDMA_MASK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC3(struct al_hal_eth_adapter *adapter, uint32_t idx,
				uint8_t udma_mask, al_bool fwd_to_mac)
{
	uint32_t	val = 0;
	FUNC1(idx < AL_ETH_FWD_VID_TABLE_NUM); /* valid VID index */
	FUNC0(val,  AL_ETH_TX_VLAN_TABLE_UDMA_MASK, 0, udma_mask);
	FUNC0(val,  AL_ETH_TX_VLAN_TABLE_FWD_TO_MAC, 4, fwd_to_mac);

	FUNC2(&adapter->ec_regs_base->tfw.tx_vid_table_addr, idx);
	FUNC2(&adapter->ec_regs_base->tfw.tx_vid_table_data, val);
	return 0;
}