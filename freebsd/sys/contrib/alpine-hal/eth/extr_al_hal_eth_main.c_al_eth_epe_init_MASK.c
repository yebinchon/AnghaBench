#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct al_hal_eth_adapter {scalar_t__ enable_rx_parser; TYPE_4__* ec_regs_base; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  checksum; int /*<<< orphan*/  meta; } ;
struct TYPE_8__ {TYPE_3__ rfw; TYPE_2__* epe_h; TYPE_1__* epe; } ;
struct TYPE_6__ {int /*<<< orphan*/  hdr_len; } ;
struct TYPE_5__ {int /*<<< orphan*/  res_in; int /*<<< orphan*/  res_def; } ;

/* Variables and functions */
 int AL_ETH_EPE_ENTRIES_NUM ; 
 int EC_RFW_CHECKSUM_HDR_SEL ; 
 int EC_RFW_META_L3_LEN_CALC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * al_eth_epe_control_table ; 
 int /*<<< orphan*/  FUNC1 (struct al_hal_eth_adapter*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * al_eth_epe_p_regs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(struct al_hal_eth_adapter *adapter)
{
	int idx;

	if (adapter->enable_rx_parser == 0) {
		FUNC0("eth [%s]: disable rx parser\n", adapter->name);

		FUNC2(&adapter->ec_regs_base->epe[0].res_def, 0x08000000);
		FUNC2(&adapter->ec_regs_base->epe[0].res_in, 0x7);

		FUNC2(&adapter->ec_regs_base->epe[1].res_def, 0x08000000);
		FUNC2(&adapter->ec_regs_base->epe[1].res_in, 0x7);

		return;
	}
	FUNC0("eth [%s]: enable rx parser\n", adapter->name);
	for (idx = 0; idx < AL_ETH_EPE_ENTRIES_NUM; idx++)
		FUNC1(adapter, idx, &al_eth_epe_p_regs[idx], &al_eth_epe_control_table[idx]);

	FUNC2(&adapter->ec_regs_base->epe[0].res_def, 0x08000080);
	FUNC2(&adapter->ec_regs_base->epe[0].res_in, 0x7);

	FUNC2(&adapter->ec_regs_base->epe[1].res_def, 0x08000080);
	FUNC2(&adapter->ec_regs_base->epe[1].res_in, 0);

	/* header length as function of 4 bits value, for GRE, when C bit is set, the header len should be increase by 4*/
	FUNC2(&adapter->ec_regs_base->epe_h[8].hdr_len, (4 << 16) | 4);

	/* select the outer information when writing the rx descriptor (l3 protocol index etc) */
	FUNC2(&adapter->ec_regs_base->rfw.meta, EC_RFW_META_L3_LEN_CALC);

	FUNC2(&adapter->ec_regs_base->rfw.checksum, EC_RFW_CHECKSUM_HDR_SEL);
}