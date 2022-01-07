
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct al_udma {TYPE_3__* udma_regs; } ;
struct TYPE_4__ {int indirect_ctrl; } ;
struct TYPE_5__ {TYPE_1__ m2s; } ;
struct TYPE_6__ {TYPE_2__ m2s; } ;


 int AL_UDMA_PRINT_REG (struct al_udma*,char*,char*,int ,int ,int ) ;
 int al_dbg (char*,size_t) ;
 int al_reg_write32 (int *,size_t) ;
 int cfg ;
 int comp_cfg ;
 int comp_cfg_2 ;
 int pkt_cfg ;
 int q_rx_pkt ;
 int qos_cfg ;
 int rcrbp_high ;
 int rcrbp_low ;
 int rcrhp ;
 int rcrhp_internal ;
 int rdcp ;
 int rdrbp_high ;
 int rdrbp_low ;
 int rdrhp ;
 int rdrl ;
 int rdrtp ;
 int s2m ;
 int * s2m_q ;
 int sel_comp_fifo_status ;
 int sel_pref_fifo_status ;
 int status ;

__attribute__((used)) static void al_udma_regs_s2m_q_print(struct al_udma *udma, uint32_t qid)
{
 al_dbg("S2M Q[%d] status regs:\n", qid);
 al_reg_write32(&udma->udma_regs->m2s.m2s.indirect_ctrl, qid);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m, sel_pref_fifo_status);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m, sel_comp_fifo_status);

 al_dbg("S2M Q[%d] regs:\n", qid);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_q[qid], cfg);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_q[qid], status);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_q[qid], rdrbp_low);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_q[qid], rdrbp_high);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_q[qid], rdrl);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_q[qid], rdrhp);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_q[qid], rdrtp);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_q[qid], rdcp);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_q[qid], rcrbp_low);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_q[qid], rcrbp_high);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_q[qid], rcrhp);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_q[qid], rcrhp_internal);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_q[qid], comp_cfg);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_q[qid], comp_cfg_2);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_q[qid], pkt_cfg);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_q[qid], qos_cfg);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_q[qid], q_rx_pkt);
}
