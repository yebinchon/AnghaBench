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
 int /*<<< orphan*/  UDMA_M2S_STATE_COMP_CTRL ; 
 int /*<<< orphan*/  UDMA_M2S_STATE_DATA_RD_CTRL ; 
 int /*<<< orphan*/  UDMA_M2S_STATE_DESC_PREF ; 
 int /*<<< orphan*/  UDMA_M2S_STATE_STREAM_IF ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  cfg_len ; 
 int /*<<< orphan*/  check_en ; 
 int /*<<< orphan*/  comp_ctrl ; 
 int /*<<< orphan*/  data_fifo_status ; 
 int /*<<< orphan*/  desc_pref ; 
 int /*<<< orphan*/  err_log_mask ; 
 int /*<<< orphan*/  fifo_en ; 
 int /*<<< orphan*/  header_fifo_status ; 
 int /*<<< orphan*/  log_0 ; 
 int /*<<< orphan*/  log_1 ; 
 int /*<<< orphan*/  log_2 ; 
 int /*<<< orphan*/  log_3 ; 
 int /*<<< orphan*/  m2s ; 
 int /*<<< orphan*/  rd_ctrl ; 
 int /*<<< orphan*/  state ; 
 int /*<<< orphan*/  stream_cfg ; 
 int /*<<< orphan*/  stream_if ; 
 int /*<<< orphan*/  unack_fifo_status ; 

__attribute__((used)) static void FUNC3(struct al_udma *udma)
{
	FUNC2("M2S general regs:\n");

	FUNC0(udma, " ", "\n", m2s, m2s, state);
	FUNC1(udma, "  ", "\n", "%d", m2s, m2s, state,
			comp_ctrl,
			UDMA_M2S_STATE_COMP_CTRL);
	FUNC1(udma, "  ", "\n", "%d", m2s, m2s, state,
			stream_if,
			UDMA_M2S_STATE_STREAM_IF);
	FUNC1(udma, "  ", "\n", "%d", m2s, m2s, state,
			rd_ctrl,
			UDMA_M2S_STATE_DATA_RD_CTRL);
	FUNC1(udma, "  ", "\n", "%d", m2s, m2s, state,
			desc_pref,
			UDMA_M2S_STATE_DESC_PREF);

	FUNC0(udma, " ", "\n", m2s, m2s, err_log_mask);
	FUNC0(udma, " ", "\n", m2s, m2s, log_0);
	FUNC0(udma, " ", "\n", m2s, m2s, log_1);
	FUNC0(udma, " ", "\n", m2s, m2s, log_2);
	FUNC0(udma, " ", "\n", m2s, m2s, log_3);
	FUNC0(udma, " ", "\n", m2s, m2s, data_fifo_status);
	FUNC0(udma, " ", "\n", m2s, m2s, header_fifo_status);
	FUNC0(udma, " ", "\n", m2s, m2s, unack_fifo_status);
	FUNC0(udma, " ", "\n", m2s, m2s, check_en);
	FUNC0(udma, " ", "\n", m2s, m2s, fifo_en);
	FUNC0(udma, " ", "\n", m2s, m2s, cfg_len);
	FUNC0(udma, " ", "\n", m2s, m2s, stream_cfg);
}