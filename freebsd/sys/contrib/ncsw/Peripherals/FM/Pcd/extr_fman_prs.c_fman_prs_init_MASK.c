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
typedef  int uint32_t ;
struct fman_prs_regs {int /*<<< orphan*/  fmpr_ppsc; int /*<<< orphan*/  fmpr_perer; int /*<<< orphan*/  fmpr_perr; int /*<<< orphan*/  fmpr_pever; int /*<<< orphan*/  fmpr_pevr; int /*<<< orphan*/  fmpr_rpclim; } ;
struct fman_prs_cfg {int max_prs_cyc_lim; int prs_exceptions; int port_id_stat; } ;

/* Variables and functions */
 int FM_PCD_EX_PRS_DOUBLE_ECC ; 
 int FM_PCD_EX_PRS_SINGLE_ECC ; 
 int FM_PCD_PRS_DOUBLE_ECC ; 
 int FM_PCD_PRS_PORT_IDLE_STS ; 
 int FM_PCD_PRS_SINGLE_ECC ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 

int FUNC1(struct fman_prs_regs *regs, struct fman_prs_cfg *cfg)
{
	uint32_t tmp;

	FUNC0(cfg->max_prs_cyc_lim, &regs->fmpr_rpclim);
	FUNC0((FM_PCD_PRS_SINGLE_ECC | FM_PCD_PRS_PORT_IDLE_STS),
			&regs->fmpr_pevr);

	if (cfg->prs_exceptions & FM_PCD_EX_PRS_SINGLE_ECC)
		FUNC0(FM_PCD_PRS_SINGLE_ECC, &regs->fmpr_pever);
	else
		FUNC0(0, &regs->fmpr_pever);

	FUNC0(FM_PCD_PRS_DOUBLE_ECC, &regs->fmpr_perr);

	tmp = 0;
	if (cfg->prs_exceptions & FM_PCD_EX_PRS_DOUBLE_ECC)
		tmp |= FM_PCD_PRS_DOUBLE_ECC;
	FUNC0(tmp, &regs->fmpr_perer);

	FUNC0(cfg->port_id_stat, &regs->fmpr_ppsc);

	return 0;
}