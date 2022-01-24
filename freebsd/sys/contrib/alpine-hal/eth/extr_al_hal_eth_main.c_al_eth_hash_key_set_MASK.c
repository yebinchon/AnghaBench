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
typedef  size_t uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct TYPE_4__ {TYPE_1__* rfw_hash; } ;
struct TYPE_3__ {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 size_t AL_ETH_RX_HASH_KEY_NUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 

int FUNC2(struct al_hal_eth_adapter *adapter, uint32_t idx, uint32_t val)
{

	FUNC0(idx < AL_ETH_RX_HASH_KEY_NUM); /*valid CTRL index*/

	FUNC1(&adapter->ec_regs_base->rfw_hash[idx].key, val);

	return 0;
}