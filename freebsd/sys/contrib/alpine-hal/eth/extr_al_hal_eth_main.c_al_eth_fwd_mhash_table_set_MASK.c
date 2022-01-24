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
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct TYPE_3__ {int /*<<< orphan*/  mhash_table_data; int /*<<< orphan*/  mhash_table_addr; } ;
struct TYPE_4__ {TYPE_1__ rfw; } ;

/* Variables and functions */
 scalar_t__ AL_ETH_FWD_MAC_HASH_NUM ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC4(struct al_hal_eth_adapter *adapter, uint32_t idx, uint8_t udma_mask, uint8_t qid)
{
	uint32_t val = 0;
	FUNC2(idx < AL_ETH_FWD_MAC_HASH_NUM); /* valid MHASH index */

	FUNC1(val,  FUNC0(3,0), 0, udma_mask);
	FUNC1(val,  FUNC0(5,4), 4, qid);

	FUNC3(&adapter->ec_regs_base->rfw.mhash_table_addr, idx);
	FUNC3(&adapter->ec_regs_base->rfw.mhash_table_data, val);
	return 0;
}