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
struct al_eth_pth_ext_update_params {int /*<<< orphan*/  triggers; int /*<<< orphan*/  method; } ;
struct TYPE_3__ {int /*<<< orphan*/  int_update_ctrl; } ;
struct TYPE_4__ {TYPE_1__ pth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EC_PTH_EXT_UPDATE_CTRL_EXT_TRIG_EN_MASK ; 
 int /*<<< orphan*/  EC_PTH_EXT_UPDATE_CTRL_EXT_TRIG_EN_SHIFT ; 
 int /*<<< orphan*/  EC_PTH_INT_UPDATE_CTRL_UPDATE_METHOD_MASK ; 
 int /*<<< orphan*/  EC_PTH_INT_UPDATE_CTRL_UPDATE_METHOD_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(struct al_hal_eth_adapter *adapter,
				 struct al_eth_pth_ext_update_params * params)
{
	uint32_t reg;

	reg = FUNC1(&adapter->ec_regs_base->pth.int_update_ctrl);
	FUNC0(reg, EC_PTH_INT_UPDATE_CTRL_UPDATE_METHOD_MASK,
			 EC_PTH_INT_UPDATE_CTRL_UPDATE_METHOD_SHIFT,
			 params->method);

	FUNC0(reg, EC_PTH_EXT_UPDATE_CTRL_EXT_TRIG_EN_MASK,
			 EC_PTH_EXT_UPDATE_CTRL_EXT_TRIG_EN_SHIFT,
			 params->triggers);
	FUNC2(&adapter->ec_regs_base->pth.int_update_ctrl, reg);
	return 0;
}