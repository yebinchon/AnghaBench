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
typedef  size_t uint8_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct TYPE_4__ {TYPE_1__* rfw_priority; } ;
struct TYPE_3__ {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 size_t AL_ETH_FWD_PRIO_TABLE_NUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 

int FUNC2(struct al_hal_eth_adapter *adapter, uint8_t prio, uint8_t qid)
{
	FUNC0(prio < AL_ETH_FWD_PRIO_TABLE_NUM); /* valid PRIO index */

	FUNC1(&adapter->ec_regs_base->rfw_priority[prio].queue, qid);
	return 0;
}