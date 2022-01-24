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
typedef  int uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct al_eth_pth_time {int seconds; int femto; } ;
struct TYPE_3__ {int /*<<< orphan*/  ext_update_subseconds_msb; int /*<<< orphan*/  ext_update_subseconds_lsb; int /*<<< orphan*/  ext_update_seconds; } ;
struct TYPE_4__ {TYPE_1__ pth; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EC_PTH_EXT_UPDATE_SUBSECONDS_LSB_VAL_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

int FUNC2(struct al_hal_eth_adapter *adapter,
				   struct al_eth_pth_time *time)
{
	uint32_t reg;

	FUNC1(&adapter->ec_regs_base->pth.ext_update_seconds,
		       time->seconds);
	reg = time->femto & FUNC0(18);
	reg = reg << EC_PTH_EXT_UPDATE_SUBSECONDS_LSB_VAL_SHIFT;
	FUNC1(&adapter->ec_regs_base->pth.ext_update_subseconds_lsb,
		       reg);
	reg = time->femto >> 18;
	FUNC1(&adapter->ec_regs_base->pth.ext_update_subseconds_msb,
		       reg);

	return 0;
}