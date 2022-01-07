
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct al_udma_q {TYPE_2__* q_regs; } ;
typedef scalar_t__ al_bool ;
struct TYPE_3__ {int dwrr_cfg_1; } ;
struct TYPE_4__ {TYPE_1__ m2s_q; } ;


 scalar_t__ AL_TRUE ;
 int UDMA_M2S_Q_DWRR_CFG_1_PAUSE ;
 int al_reg_read32 (int *) ;
 int al_reg_write32 (int *,int ) ;

int al_udma_m2s_q_sc_pause(struct al_udma_q *udma_q, al_bool set)
{
 uint32_t reg = al_reg_read32(&udma_q->q_regs->m2s_q.dwrr_cfg_1);

 if (set == AL_TRUE)
  reg |= UDMA_M2S_Q_DWRR_CFG_1_PAUSE;
 else
  reg &= ~UDMA_M2S_Q_DWRR_CFG_1_PAUSE;
 al_reg_write32(&udma_q->q_regs->m2s_q.dwrr_cfg_1, reg);

 return 0;
}
