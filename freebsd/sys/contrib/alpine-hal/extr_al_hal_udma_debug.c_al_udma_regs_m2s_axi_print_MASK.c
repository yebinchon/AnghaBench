#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct al_udma {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct al_udma*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct al_udma*,char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UDMA_AXI_M2S_DESC_WR_CFG_1_MAX_AXI_BEATS ; 
 int /*<<< orphan*/  UDMA_AXI_M2S_DESC_WR_CFG_1_MIN_AXI_BEATS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  axi_m2s ; 
 int /*<<< orphan*/  comp_wr_cfg_1 ; 
 int /*<<< orphan*/  comp_wr_cfg_2 ; 
 int /*<<< orphan*/  data_rd_cfg ; 
 int /*<<< orphan*/  data_rd_cfg_1 ; 
 int /*<<< orphan*/  data_rd_cfg_2 ; 
 int /*<<< orphan*/  desc_rd_cfg_1 ; 
 int /*<<< orphan*/  desc_rd_cfg_2 ; 
 int /*<<< orphan*/  desc_rd_cfg_3 ; 
 int /*<<< orphan*/  desc_wr_cfg_1 ; 
 int /*<<< orphan*/  m2s ; 
 int /*<<< orphan*/  max_axi_beats ; 
 int /*<<< orphan*/  min_axi_beats ; 
 int /*<<< orphan*/  ostand_cfg ; 

__attribute__((used)) static void FUNC3(struct al_udma *udma)
{
	FUNC2("M2S AXI regs:\n");
	FUNC0(udma, " ", "\n", m2s, axi_m2s, comp_wr_cfg_1);
	FUNC0(udma, " ", "\n", m2s, axi_m2s, comp_wr_cfg_2);
	FUNC0(udma, " ", "\n", m2s, axi_m2s, data_rd_cfg_1);
	FUNC0(udma, " ", "\n", m2s, axi_m2s, data_rd_cfg_2);
	FUNC0(udma, " ", "\n", m2s, axi_m2s, desc_rd_cfg_1);
	FUNC0(udma, " ", "\n", m2s, axi_m2s, desc_rd_cfg_2);
	FUNC0(udma, " ", "\n", m2s, axi_m2s, data_rd_cfg);
	FUNC0(udma, " ", "\n", m2s, axi_m2s, desc_rd_cfg_3);

	FUNC0(udma, " ", "\n", m2s, axi_m2s, desc_wr_cfg_1);
	FUNC1(udma, "  ", "\n", "%d", m2s, axi_m2s,
			desc_wr_cfg_1,
			max_axi_beats,
			UDMA_AXI_M2S_DESC_WR_CFG_1_MAX_AXI_BEATS);
	FUNC1(udma, "  ", "\n", "%d", m2s, axi_m2s,
			desc_wr_cfg_1,
			min_axi_beats,
			UDMA_AXI_M2S_DESC_WR_CFG_1_MIN_AXI_BEATS);

	FUNC0(udma, " ", "\n", m2s, axi_m2s, ostand_cfg);
}