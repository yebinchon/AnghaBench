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
typedef  int /*<<< orphan*/  uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; int /*<<< orphan*/  mac_mode; } ;
struct TYPE_4__ {TYPE_1__* pth_db; } ;
struct TYPE_3__ {int /*<<< orphan*/  ts; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int AL_ETH_PTH_TX_SAMPLES_NUM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct al_hal_eth_adapter *adapter, uint8_t ts_index,
			 uint32_t *timestamp)
{
	FUNC1(ts_index < AL_ETH_PTH_TX_SAMPLES_NUM);

	/* in 1G mode, only indexes 1-7 are allowed*/
	if (FUNC0(adapter->mac_mode)) {
		FUNC1(ts_index <= 7);
		FUNC1(ts_index >= 1);
	}

	/*TODO: check if sample is valid */
	*timestamp = FUNC2(&adapter->ec_regs_base->pth_db[ts_index].ts);
	return 0;
}