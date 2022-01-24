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
struct al_hal_eth_adapter {scalar_t__ rev_id; } ;

/* Variables and functions */
 scalar_t__ AL_ETH_REV_ID_2 ; 
 int AL_ETH_TX_GENERIC_CRC_ENTRIES_NUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * al_eth_generic_tx_crc_gpd ; 
 int /*<<< orphan*/  FUNC1 (struct al_hal_eth_adapter*,int,int /*<<< orphan*/ *) ; 

int FUNC2(struct al_hal_eth_adapter *adapter)
{
	int idx;
	FUNC0((adapter->rev_id > AL_ETH_REV_ID_2));

	for (idx = 0; idx < AL_ETH_TX_GENERIC_CRC_ENTRIES_NUM; idx++)
		FUNC1(adapter, idx,
				&al_eth_generic_tx_crc_gpd[idx]);

	return 0;
}