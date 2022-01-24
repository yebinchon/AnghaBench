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
 int /*<<< orphan*/  FUNC1 (struct al_udma*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct al_udma*,char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UDMA_M2S_COMP_CFG_1C_COMP_FIFO_DEPTH ; 
 int /*<<< orphan*/  UDMA_M2S_COMP_CFG_1C_FORCE_RR ; 
 int /*<<< orphan*/  UDMA_M2S_COMP_CFG_1C_Q_FREE_MIN ; 
 int /*<<< orphan*/  UDMA_M2S_COMP_CFG_1C_Q_PROMOTION ; 
 int /*<<< orphan*/  UDMA_M2S_COMP_CFG_1C_UNACK_FIFO_DEPTH ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  cfg_1c ; 
 int /*<<< orphan*/  cfg_application_ack ; 
 int /*<<< orphan*/  cfg_coal ; 
 int /*<<< orphan*/  comp_fifo_depth ; 
 int /*<<< orphan*/  force_rr ; 
 int /*<<< orphan*/  m2s ; 
 int /*<<< orphan*/  m2s_comp ; 
 int /*<<< orphan*/  q_free_min ; 
 int /*<<< orphan*/  q_promotion ; 
 int /*<<< orphan*/  unack_fifo_depth ; 

__attribute__((used)) static void FUNC4(struct al_udma *udma)
{
	FUNC3("M2S completion regs:\n");

	FUNC0(udma, " ", "\n", m2s, m2s_comp, cfg_1c);

	FUNC2(udma, "  ", "\n", "%d", m2s, m2s_comp, cfg_1c,
			comp_fifo_depth,
			UDMA_M2S_COMP_CFG_1C_COMP_FIFO_DEPTH);
	FUNC2(udma, "  ", "\n", "%d", m2s, m2s_comp, cfg_1c,
			unack_fifo_depth,
			UDMA_M2S_COMP_CFG_1C_UNACK_FIFO_DEPTH);
	FUNC1(udma, "  ", "\n", m2s, m2s_comp, cfg_1c,
			q_promotion,
			UDMA_M2S_COMP_CFG_1C_Q_PROMOTION);
	FUNC1(udma, "  ", "\n", m2s, m2s_comp, cfg_1c,
			force_rr,
			UDMA_M2S_COMP_CFG_1C_FORCE_RR);
	FUNC2(udma, "  ", "\n", "%d", m2s, m2s_comp, cfg_1c,
			q_free_min,
			UDMA_M2S_COMP_CFG_1C_Q_FREE_MIN);

	FUNC0(udma, " ", "\n", m2s, m2s_comp, cfg_coal);
	FUNC0(udma, " ", "\n", m2s, m2s_comp, cfg_application_ack);
}