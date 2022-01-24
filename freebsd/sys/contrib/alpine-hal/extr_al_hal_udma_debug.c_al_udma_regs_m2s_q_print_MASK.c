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
typedef  size_t uint32_t ;
struct al_udma {TYPE_3__* udma_regs; } ;
struct TYPE_8__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  cfg_token_size_2; int /*<<< orphan*/  cfg_token_size_1; int /*<<< orphan*/  cfg_cycle; int /*<<< orphan*/  cfg_1s; } ;
struct TYPE_5__ {int /*<<< orphan*/  indirect_ctrl; } ;
struct TYPE_6__ {TYPE_1__ m2s; } ;
struct TYPE_7__ {TYPE_2__ m2s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct al_udma*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  cfg ; 
 int /*<<< orphan*/  comp_cfg ; 
 int /*<<< orphan*/  dwrr_cfg_1 ; 
 int /*<<< orphan*/  dwrr_cfg_2 ; 
 int /*<<< orphan*/  dwrr_cfg_3 ; 
 int /*<<< orphan*/  m2s ; 
 int /*<<< orphan*/ * m2s_q ; 
 int /*<<< orphan*/  q_tx_pkt ; 
 TYPE_4__ rlimit ; 
 int /*<<< orphan*/  sel_comp_fifo_status ; 
 int /*<<< orphan*/  sel_dwrr_status ; 
 int /*<<< orphan*/  sel_pref_fifo_status ; 
 int /*<<< orphan*/  sel_rate_limit_status ; 
 int /*<<< orphan*/  status ; 
 int /*<<< orphan*/  tcrbp_high ; 
 int /*<<< orphan*/  tcrbp_low ; 
 int /*<<< orphan*/  tcrhp ; 
 int /*<<< orphan*/  tdcp ; 
 int /*<<< orphan*/  tdrbp_high ; 
 int /*<<< orphan*/  tdrbp_low ; 
 int /*<<< orphan*/  tdrhp ; 
 int /*<<< orphan*/  tdrl ; 
 int /*<<< orphan*/  tdrtp ; 

__attribute__((used)) static void FUNC3(struct al_udma *udma, uint32_t qid)
{
	FUNC1("M2S Q[%d] status regs:\n", qid);
	FUNC2(&udma->udma_regs->m2s.m2s.indirect_ctrl, qid);
	FUNC0(udma, " ", "\n", m2s, m2s, sel_pref_fifo_status);
	FUNC0(udma, " ", "\n", m2s, m2s, sel_comp_fifo_status);
	FUNC0(udma, " ", "\n", m2s, m2s, sel_rate_limit_status);
	FUNC0(udma, " ", "\n", m2s, m2s, sel_dwrr_status);

	FUNC1("M2S Q[%d] regs:\n", qid);
	FUNC0(udma, " ", "\n", m2s, m2s_q[qid], cfg);
	FUNC0(udma, " ", "\n", m2s, m2s_q[qid], status);
	FUNC0(udma, " ", "\n", m2s, m2s_q[qid], tdrbp_low);
	FUNC0(udma, " ", "\n", m2s, m2s_q[qid], tdrbp_high);
	FUNC0(udma, " ", "\n", m2s, m2s_q[qid], tdrl);
	FUNC0(udma, " ", "\n", m2s, m2s_q[qid], tdrhp);
	FUNC0(udma, " ", "\n", m2s, m2s_q[qid], tdrtp);
	FUNC0(udma, " ", "\n", m2s, m2s_q[qid], tdcp);
	FUNC0(udma, " ", "\n", m2s, m2s_q[qid], tcrbp_low);
	FUNC0(udma, " ", "\n", m2s, m2s_q[qid], tcrbp_high);
	FUNC0(udma, " ", "\n", m2s, m2s_q[qid], tcrhp);

	FUNC0(udma, " ", "\n", m2s, m2s_q[qid], rlimit.cfg_1s);
	FUNC0(udma, " ", "\n", m2s, m2s_q[qid], rlimit.cfg_cycle);
	FUNC0(udma, " ", "\n", m2s, m2s_q[qid],
			rlimit.cfg_token_size_1);
	FUNC0(udma, " ", "\n", m2s, m2s_q[qid],
			rlimit.cfg_token_size_2);
	FUNC0(udma, " ", "\n", m2s, m2s_q[qid], rlimit.mask);

	FUNC0(udma, " ", "\n", m2s, m2s_q[qid], dwrr_cfg_1);
	FUNC0(udma, " ", "\n", m2s, m2s_q[qid], dwrr_cfg_2);
	FUNC0(udma, " ", "\n", m2s, m2s_q[qid], dwrr_cfg_3);
	FUNC0(udma, " ", "\n", m2s, m2s_q[qid], comp_cfg);
	FUNC0(udma, " ", "\n", m2s, m2s_q[qid], q_tx_pkt);
}