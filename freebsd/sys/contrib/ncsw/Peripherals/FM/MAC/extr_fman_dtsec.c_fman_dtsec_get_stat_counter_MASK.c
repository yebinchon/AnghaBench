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
typedef  int /*<<< orphan*/  uint32_t ;
struct dtsec_regs {int /*<<< orphan*/  tdrp; int /*<<< orphan*/  tncl; int /*<<< orphan*/  txpf; int /*<<< orphan*/  tbca; int /*<<< orphan*/  tmca; int /*<<< orphan*/  tpkt; int /*<<< orphan*/  tbyt; int /*<<< orphan*/  tfcs; int /*<<< orphan*/  rdrp; int /*<<< orphan*/  rjbr; int /*<<< orphan*/  rfrg; int /*<<< orphan*/  rovr; int /*<<< orphan*/  rund; int /*<<< orphan*/  rcse; int /*<<< orphan*/  rcde; int /*<<< orphan*/  rflr; int /*<<< orphan*/  raln; int /*<<< orphan*/  rxpf; int /*<<< orphan*/  rbca; int /*<<< orphan*/  rmca; int /*<<< orphan*/  rpkt; int /*<<< orphan*/  rbyt; int /*<<< orphan*/  trmgv; int /*<<< orphan*/  trmax; int /*<<< orphan*/  tr1k; int /*<<< orphan*/  tr511; int /*<<< orphan*/  tr255; int /*<<< orphan*/  tr127; int /*<<< orphan*/  tr64; } ;
typedef  enum dtsec_stat_counters { ____Placeholder_dtsec_stat_counters } dtsec_stat_counters ;

/* Variables and functions */
#define  E_DTSEC_STAT_RALN 156 
#define  E_DTSEC_STAT_RBCA 155 
#define  E_DTSEC_STAT_RBYT 154 
#define  E_DTSEC_STAT_RCDE 153 
#define  E_DTSEC_STAT_RCSE 152 
#define  E_DTSEC_STAT_RDRP 151 
#define  E_DTSEC_STAT_RFLR 150 
#define  E_DTSEC_STAT_RFRG 149 
#define  E_DTSEC_STAT_RJBR 148 
#define  E_DTSEC_STAT_RMCA 147 
#define  E_DTSEC_STAT_ROVR 146 
#define  E_DTSEC_STAT_RPKT 145 
#define  E_DTSEC_STAT_RUND 144 
#define  E_DTSEC_STAT_RXPF 143 
#define  E_DTSEC_STAT_TBCA 142 
#define  E_DTSEC_STAT_TBYT 141 
#define  E_DTSEC_STAT_TDRP 140 
#define  E_DTSEC_STAT_TFCS 139 
#define  E_DTSEC_STAT_TMCA 138 
#define  E_DTSEC_STAT_TNCL 137 
#define  E_DTSEC_STAT_TPKT 136 
#define  E_DTSEC_STAT_TR127 135 
#define  E_DTSEC_STAT_TR1K 134 
#define  E_DTSEC_STAT_TR255 133 
#define  E_DTSEC_STAT_TR511 132 
#define  E_DTSEC_STAT_TR64 131 
#define  E_DTSEC_STAT_TRMAX 130 
#define  E_DTSEC_STAT_TRMGV 129 
#define  E_DTSEC_STAT_TXPF 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

uint32_t FUNC1(struct dtsec_regs *regs,
		enum dtsec_stat_counters reg_name)
{
	uint32_t ret_val;

	switch (reg_name) {
	case E_DTSEC_STAT_TR64:
		ret_val = FUNC0(&regs->tr64);
		break;
	case E_DTSEC_STAT_TR127:
		ret_val = FUNC0(&regs->tr127);
		break;
	case E_DTSEC_STAT_TR255:
		ret_val = FUNC0(&regs->tr255);
		break;
	case E_DTSEC_STAT_TR511:
		ret_val = FUNC0(&regs->tr511);
		break;
	case E_DTSEC_STAT_TR1K:
		ret_val = FUNC0(&regs->tr1k);
		break;
	case E_DTSEC_STAT_TRMAX:
		ret_val = FUNC0(&regs->trmax);
		break;
	case E_DTSEC_STAT_TRMGV:
		ret_val = FUNC0(&regs->trmgv);
		break;
	case E_DTSEC_STAT_RBYT:
		ret_val = FUNC0(&regs->rbyt);
		break;
	case E_DTSEC_STAT_RPKT:
		ret_val = FUNC0(&regs->rpkt);
		break;
	case E_DTSEC_STAT_RMCA:
		ret_val = FUNC0(&regs->rmca);
		break;
	case E_DTSEC_STAT_RBCA:
		ret_val = FUNC0(&regs->rbca);
		break;
	case E_DTSEC_STAT_RXPF:
		ret_val = FUNC0(&regs->rxpf);
		break;
	case E_DTSEC_STAT_RALN:
		ret_val = FUNC0(&regs->raln);
		break;
	case E_DTSEC_STAT_RFLR:
		ret_val = FUNC0(&regs->rflr);
		break;
	case E_DTSEC_STAT_RCDE:
		ret_val = FUNC0(&regs->rcde);
		break;
	case E_DTSEC_STAT_RCSE:
		ret_val = FUNC0(&regs->rcse);
		break;
	case E_DTSEC_STAT_RUND:
		ret_val = FUNC0(&regs->rund);
		break;
	case E_DTSEC_STAT_ROVR:
		ret_val = FUNC0(&regs->rovr);
		break;
	case E_DTSEC_STAT_RFRG:
		ret_val = FUNC0(&regs->rfrg);
		break;
	case E_DTSEC_STAT_RJBR:
		ret_val = FUNC0(&regs->rjbr);
		break;
	case E_DTSEC_STAT_RDRP:
		ret_val = FUNC0(&regs->rdrp);
		break;
	case E_DTSEC_STAT_TFCS:
		ret_val = FUNC0(&regs->tfcs);
		break;
	case E_DTSEC_STAT_TBYT:
		ret_val = FUNC0(&regs->tbyt);
		break;
	case E_DTSEC_STAT_TPKT:
		ret_val = FUNC0(&regs->tpkt);
		break;
	case E_DTSEC_STAT_TMCA:
		ret_val = FUNC0(&regs->tmca);
		break;
	case E_DTSEC_STAT_TBCA:
		ret_val = FUNC0(&regs->tbca);
		break;
	case E_DTSEC_STAT_TXPF:
		ret_val = FUNC0(&regs->txpf);
		break;
	case E_DTSEC_STAT_TNCL:
		ret_val = FUNC0(&regs->tncl);
		break;
	case E_DTSEC_STAT_TDRP:
		ret_val = FUNC0(&regs->tdrp);
		break;
	default:
		ret_val = 0;
	}

	return ret_val;
}