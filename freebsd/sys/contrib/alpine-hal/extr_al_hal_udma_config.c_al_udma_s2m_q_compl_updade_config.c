
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct al_udma_q {TYPE_2__* q_regs; } ;
typedef scalar_t__ al_bool ;
struct TYPE_3__ {int comp_cfg; } ;
struct TYPE_4__ {TYPE_1__ s2m_q; } ;


 scalar_t__ AL_TRUE ;
 int UDMA_S2M_Q_COMP_CFG_EN_COMP_RING_UPDATE ;
 int al_reg_read32 (int *) ;
 int al_reg_write32 (int *,int ) ;

int al_udma_s2m_q_compl_updade_config(struct al_udma_q *udma_q, al_bool enable)
{
 uint32_t reg = al_reg_read32(&udma_q->q_regs->s2m_q.comp_cfg);

 if (enable == AL_TRUE)
  reg |= UDMA_S2M_Q_COMP_CFG_EN_COMP_RING_UPDATE;
 else
  reg &= ~UDMA_S2M_Q_COMP_CFG_EN_COMP_RING_UPDATE;

 al_reg_write32(&udma_q->q_regs->s2m_q.comp_cfg, reg);

 return 0;
}
