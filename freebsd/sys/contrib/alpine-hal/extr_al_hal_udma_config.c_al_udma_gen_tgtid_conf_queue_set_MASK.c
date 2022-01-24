#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_7__ {size_t cfg_tgtaddr_0; size_t cfg_tgtaddr_2; size_t cfg_tgtaddr_1; size_t cfg_tgtaddr_3; } ;
struct TYPE_6__ {size_t cfg_tgtid_0; size_t cfg_tgtid_1; size_t cfg_tgtid_3; size_t cfg_tgtid_2; size_t cfg_tgtid_4; } ;
struct TYPE_8__ {TYPE_2__ tgtaddr; TYPE_1__ tgtid; } ;
struct unit_regs {TYPE_3__ gen; } ;
struct al_udma_gen_tgtid_conf {TYPE_5__* rx_q_conf; TYPE_4__* tx_q_conf; } ;
struct TYPE_10__ {size_t desc_en; size_t queue_en; size_t tgtid; size_t tgtaddr; } ;
struct TYPE_9__ {size_t desc_en; size_t queue_en; size_t tgtid; size_t tgtaddr; } ;

/* Variables and functions */
 int AL_FALSE ; 
 unsigned int AL_UDMA_REV_ID_REV2 ; 
 size_t DMA_MAX_Q ; 
 size_t FUNC0 (size_t) ; 
 size_t FUNC1 (size_t) ; 
 size_t UDMA_GEN_TGTID_CFG_TGTID_0_RX_Q_TGTID_DESC_EN_SHIFT ; 
 size_t UDMA_GEN_TGTID_CFG_TGTID_0_RX_Q_TGTID_QUEUE_EN_SHIFT ; 
 size_t UDMA_GEN_TGTID_CFG_TGTID_0_TX_Q_TGTID_DESC_EN_SHIFT ; 
 size_t UDMA_GEN_TGTID_CFG_TGTID_0_TX_Q_TGTID_QUEUE_EN_SHIFT ; 
 size_t FUNC2 (size_t) ; 
 size_t FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (size_t*,size_t,size_t) ; 
 unsigned int FUNC6 (struct unit_regs*) ; 

void FUNC7(
	struct unit_regs		*unit_regs,
	struct al_udma_gen_tgtid_conf	*conf,
	uint32_t qid)
{
	uint32_t *tx_tgtid_reg, *rx_tgtid_reg, *tx_tgtaddr_reg, *rx_tgtaddr_reg;
	unsigned int rev_id;

	FUNC4(qid < DMA_MAX_Q);
	rev_id = FUNC6(unit_regs);

	/* Target-ID TX DESC EN */
	FUNC5(&unit_regs->gen.tgtid.cfg_tgtid_0,
			(conf->tx_q_conf[qid].desc_en << qid) <<
			UDMA_GEN_TGTID_CFG_TGTID_0_TX_Q_TGTID_DESC_EN_SHIFT,
			(conf->tx_q_conf[qid].desc_en << qid) <<
			UDMA_GEN_TGTID_CFG_TGTID_0_TX_Q_TGTID_DESC_EN_SHIFT);

	/* Target-ID TX QUEUE EN */
	FUNC5(&unit_regs->gen.tgtid.cfg_tgtid_0,
			(conf->tx_q_conf[qid].queue_en << qid) <<
			UDMA_GEN_TGTID_CFG_TGTID_0_TX_Q_TGTID_QUEUE_EN_SHIFT,
			(conf->tx_q_conf[qid].queue_en << qid) <<
			UDMA_GEN_TGTID_CFG_TGTID_0_TX_Q_TGTID_QUEUE_EN_SHIFT);

	/* Target-ID RX DESC EN */
	FUNC5(&unit_regs->gen.tgtid.cfg_tgtid_0,
			(conf->rx_q_conf[qid].desc_en << qid) <<
			UDMA_GEN_TGTID_CFG_TGTID_0_RX_Q_TGTID_DESC_EN_SHIFT,
			(conf->rx_q_conf[qid].desc_en << qid) <<
			UDMA_GEN_TGTID_CFG_TGTID_0_RX_Q_TGTID_DESC_EN_SHIFT);

	/* Target-ID RX QUEUE EN */
	FUNC5(&unit_regs->gen.tgtid.cfg_tgtid_0,
			(conf->rx_q_conf[qid].queue_en << qid) <<
			UDMA_GEN_TGTID_CFG_TGTID_0_RX_Q_TGTID_QUEUE_EN_SHIFT,
			(conf->rx_q_conf[qid].queue_en << qid) <<
			UDMA_GEN_TGTID_CFG_TGTID_0_RX_Q_TGTID_QUEUE_EN_SHIFT);

	switch (qid) {
	case 0:
	case 1:
		tx_tgtid_reg = &unit_regs->gen.tgtid.cfg_tgtid_1;
		rx_tgtid_reg = &unit_regs->gen.tgtid.cfg_tgtid_3;
		tx_tgtaddr_reg = &unit_regs->gen.tgtaddr.cfg_tgtaddr_0;
		rx_tgtaddr_reg = &unit_regs->gen.tgtaddr.cfg_tgtaddr_2;
		break;
	case 2:
	case 3:
		tx_tgtid_reg = &unit_regs->gen.tgtid.cfg_tgtid_2;
		rx_tgtid_reg = &unit_regs->gen.tgtid.cfg_tgtid_4;
		tx_tgtaddr_reg = &unit_regs->gen.tgtaddr.cfg_tgtaddr_1;
		rx_tgtaddr_reg = &unit_regs->gen.tgtaddr.cfg_tgtaddr_3;
		break;
	default:
		FUNC4(AL_FALSE);
		return;
	}

	FUNC5(tx_tgtid_reg,
		FUNC2(qid),
		conf->tx_q_conf[qid].tgtid << FUNC3(qid));

	FUNC5(rx_tgtid_reg,
		FUNC2(qid),
		conf->rx_q_conf[qid].tgtid << FUNC3(qid));

	if (rev_id >= AL_UDMA_REV_ID_REV2) {
		FUNC5(tx_tgtaddr_reg,
			FUNC0(qid),
			conf->tx_q_conf[qid].tgtaddr << FUNC1(qid));

		FUNC5(rx_tgtaddr_reg,
			FUNC0(qid),
			conf->rx_q_conf[qid].tgtaddr << FUNC1(qid));
	}
}