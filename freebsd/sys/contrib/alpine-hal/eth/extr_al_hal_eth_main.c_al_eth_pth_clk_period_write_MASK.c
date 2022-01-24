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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct TYPE_3__ {int /*<<< orphan*/  clock_period_msb; int /*<<< orphan*/  clock_period_lsb; } ;
struct TYPE_4__ {TYPE_1__ pth; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EC_PTH_CLOCK_PERIOD_LSB_VAL_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

int FUNC2(struct al_hal_eth_adapter *adapter,
				uint64_t clk_period)
{
	uint32_t reg;
	/* first write the LSB so it will be shadowed */
	/* bits 31:14 of the clock period lsb register contains bits 17:0 of the
	 * period.
	 */
	reg = (clk_period & FUNC0(18)) << EC_PTH_CLOCK_PERIOD_LSB_VAL_SHIFT;
	FUNC1(&adapter->ec_regs_base->pth.clock_period_lsb, reg);
	reg = clk_period >> 18;
	FUNC1(&adapter->ec_regs_base->pth.clock_period_msb, reg);

	return 0;
}