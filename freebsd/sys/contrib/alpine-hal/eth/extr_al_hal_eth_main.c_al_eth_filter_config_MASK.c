#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct al_hal_eth_adapter {TYPE_3__* ec_regs_base; int /*<<< orphan*/  rev_id; int /*<<< orphan*/  name; } ;
struct al_eth_filter_params {int filters; scalar_t__ enable; scalar_t__* filter_proto; } ;
struct TYPE_4__ {int /*<<< orphan*/  filter; int /*<<< orphan*/  out_cfg; } ;
struct TYPE_6__ {TYPE_2__* epe_a; TYPE_1__ rfw; } ;
struct TYPE_5__ {int /*<<< orphan*/  prot_act; } ;

/* Variables and functions */
 int AL_ETH_PROTOCOLS_NUM ; 
 int AL_ETH_RFW_FILTER_PROT_INDEX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ AL_TRUE ; 
 int /*<<< orphan*/  EC_EPE_A_PROT_ACT_DROP ; 
 int /*<<< orphan*/  EC_RFW_OUT_CFG_DROP_EN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC3 (struct al_eth_filter_params*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 

int FUNC8(struct al_hal_eth_adapter *adapter, struct al_eth_filter_params *params)
{
	uint32_t reg;

	FUNC3(params); /* valid params pointer */

	if (params->filters & ~(FUNC0(adapter->rev_id))) {
		FUNC4("[%s]: unsupported filter options (0x%08x)\n", adapter->name, params->filters);
		return -EINVAL;
	}

	reg = FUNC5(&adapter->ec_regs_base->rfw.out_cfg);
	if (params->enable == AL_TRUE)
		FUNC2(reg, EC_RFW_OUT_CFG_DROP_EN);
	else
		FUNC1(reg, EC_RFW_OUT_CFG_DROP_EN);
	FUNC6(&adapter->ec_regs_base->rfw.out_cfg, reg);

	FUNC7(
		&adapter->ec_regs_base->rfw.filter,
		FUNC0(adapter->rev_id),
		params->filters);
	if (params->filters & AL_ETH_RFW_FILTER_PROT_INDEX) {
		int i;
		for (i = 0; i < AL_ETH_PROTOCOLS_NUM; i++) {
			reg = FUNC5(&adapter->ec_regs_base->epe_a[i].prot_act);
			if (params->filter_proto[i] == AL_TRUE)
				FUNC2(reg, EC_EPE_A_PROT_ACT_DROP);
			else
				FUNC1(reg, EC_EPE_A_PROT_ACT_DROP);
			FUNC6(&adapter->ec_regs_base->epe_a[i].prot_act, reg);
		}
	}
	return 0;
}