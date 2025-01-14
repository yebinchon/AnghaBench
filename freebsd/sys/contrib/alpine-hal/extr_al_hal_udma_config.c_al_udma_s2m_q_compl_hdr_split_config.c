
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct al_udma_q {TYPE_2__* q_regs; } ;
typedef scalar_t__ al_bool ;
struct TYPE_3__ {int pkt_cfg; } ;
struct TYPE_4__ {TYPE_1__ s2m_q; } ;


 scalar_t__ AL_TRUE ;
 int UDMA_S2M_Q_PKT_CFG_EN_HDR_SPLIT ;
 int UDMA_S2M_Q_PKT_CFG_FORCE_HDR_SPLIT ;
 int UDMA_S2M_Q_PKT_CFG_HDR_SPLIT_SIZE_MASK ;
 int al_reg_read32 (int *) ;
 int al_reg_write32 (int *,int) ;

int al_udma_s2m_q_compl_hdr_split_config(struct al_udma_q *udma_q, al_bool enable,
      al_bool force_hdr_split, uint32_t hdr_len)
{
 uint32_t reg = al_reg_read32(&udma_q->q_regs->s2m_q.pkt_cfg);

 reg &= ~UDMA_S2M_Q_PKT_CFG_HDR_SPLIT_SIZE_MASK;
 reg &= ~UDMA_S2M_Q_PKT_CFG_EN_HDR_SPLIT;
 reg &= ~UDMA_S2M_Q_PKT_CFG_FORCE_HDR_SPLIT;

 if (enable == AL_TRUE) {
  reg |= hdr_len & UDMA_S2M_Q_PKT_CFG_HDR_SPLIT_SIZE_MASK;
  reg |= UDMA_S2M_Q_PKT_CFG_EN_HDR_SPLIT;

  if (force_hdr_split == AL_TRUE)
   reg |= UDMA_S2M_Q_PKT_CFG_FORCE_HDR_SPLIT;
 }

 al_reg_write32(&udma_q->q_regs->s2m_q.pkt_cfg, reg);

 return 0;
}
