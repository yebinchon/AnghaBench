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
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; int /*<<< orphan*/  mac_mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  en_ext; } ;
struct TYPE_4__ {TYPE_1__ gen; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EC_GEN_EN_EXT_PTH_1_10_SEL ; 
 int /*<<< orphan*/  EC_GEN_EN_EXT_PTH_COMPLETION_BYPASS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(struct al_hal_eth_adapter *adapter)
{
	uint32_t reg;

	/*TODO:
	 * return error when:
	 * - working in 1G mode and MACSEC enabled
	 * - RX completion descriptor is not 8 words
	 */
	reg = FUNC1(&adapter->ec_regs_base->gen.en_ext);
	if (FUNC0(adapter->mac_mode))
		reg &= ~EC_GEN_EN_EXT_PTH_1_10_SEL;
	else
		reg |= EC_GEN_EN_EXT_PTH_1_10_SEL;
	/*
	 * set completion bypass so tx timestamps won't be inserted to tx cmpl
	 * (in order to disable unverified flow)
	 */
	reg |= EC_GEN_EN_EXT_PTH_COMPLETION_BYPASS;
	FUNC2(&adapter->ec_regs_base->gen.en_ext, reg);

	/*TODO: add the following when we have updated regs file:
	 * reg_rfw_out_cfg_timestamp_sample_out
		0 (default) – use the timestamp from the SOP info (10G MAC)
		1 – use the timestamp from the EOP (1G MAC) (noly when MACSEC is disabled)
	 */
	return 0;
}