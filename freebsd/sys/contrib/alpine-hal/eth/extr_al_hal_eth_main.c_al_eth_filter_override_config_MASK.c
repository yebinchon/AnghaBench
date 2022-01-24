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
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; int /*<<< orphan*/  rev_id; int /*<<< orphan*/  name; } ;
struct al_eth_filter_override_params {int filters; int /*<<< orphan*/  qid; int /*<<< orphan*/  udma; } ;
struct TYPE_3__ {int /*<<< orphan*/  default_or; int /*<<< orphan*/  filter; } ;
struct TYPE_4__ {TYPE_1__ rfw; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EC_RFW_DEFAULT_OR_QUEUE_MASK ; 
 int /*<<< orphan*/  EC_RFW_DEFAULT_OR_QUEUE_SHIFT ; 
 int /*<<< orphan*/  EC_RFW_DEFAULT_OR_UDMA_MASK ; 
 int /*<<< orphan*/  EC_RFW_DEFAULT_OR_UDMA_SHIFT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (struct al_eth_filter_override_params*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 

int FUNC7(struct al_hal_eth_adapter *adapter,
				  struct al_eth_filter_override_params *params)
{
	uint32_t reg;

	FUNC2(params); /* valid params pointer */

	if (params->filters & ~(FUNC0(adapter->rev_id))) {
		FUNC3("[%s]: unsupported override filter options (0x%08x)\n", adapter->name, params->filters);
		return -EINVAL;
	}

	FUNC6(
		&adapter->ec_regs_base->rfw.filter,
		FUNC0(adapter->rev_id) << 16,
		params->filters << 16);

	reg = FUNC4(&adapter->ec_regs_base->rfw.default_or);
	FUNC1(reg, EC_RFW_DEFAULT_OR_UDMA_MASK, EC_RFW_DEFAULT_OR_UDMA_SHIFT, params->udma);
	FUNC1(reg, EC_RFW_DEFAULT_OR_QUEUE_MASK, EC_RFW_DEFAULT_OR_QUEUE_SHIFT, params->qid);
	FUNC5(&adapter->ec_regs_base->rfw.default_or, reg);
	return 0;
}