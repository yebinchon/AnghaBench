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
typedef  int uint32_t ;
struct al_udma_q {TYPE_2__* q_regs; } ;
typedef  scalar_t__ al_bool ;
struct TYPE_3__ {int /*<<< orphan*/  pkt_cfg; } ;
struct TYPE_4__ {TYPE_1__ s2m_q; } ;

/* Variables and functions */
 scalar_t__ AL_TRUE ; 
 int UDMA_S2M_Q_PKT_CFG_EN_HDR_SPLIT ; 
 int UDMA_S2M_Q_PKT_CFG_FORCE_HDR_SPLIT ; 
 int UDMA_S2M_Q_PKT_CFG_HDR_SPLIT_SIZE_MASK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

int FUNC2(struct al_udma_q *udma_q, al_bool enable,
					 al_bool force_hdr_split, uint32_t hdr_len)
{
	uint32_t reg = FUNC0(&udma_q->q_regs->s2m_q.pkt_cfg);

	reg &= ~UDMA_S2M_Q_PKT_CFG_HDR_SPLIT_SIZE_MASK;
	reg &= ~UDMA_S2M_Q_PKT_CFG_EN_HDR_SPLIT;
	reg &= ~UDMA_S2M_Q_PKT_CFG_FORCE_HDR_SPLIT;

	if (enable == AL_TRUE) {
		reg |= hdr_len & UDMA_S2M_Q_PKT_CFG_HDR_SPLIT_SIZE_MASK;
		reg |= UDMA_S2M_Q_PKT_CFG_EN_HDR_SPLIT;

		if (force_hdr_split == AL_TRUE)
			reg |= UDMA_S2M_Q_PKT_CFG_FORCE_HDR_SPLIT;
	}

	FUNC1(&udma_q->q_regs->s2m_q.pkt_cfg, reg);

	return 0;
}