
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct al_udma {TYPE_3__* udma_regs; } ;
struct TYPE_8__ {int mask; int cfg_token_size_2; int cfg_token_size_1; int cfg_cycle; int cfg_1s; } ;
struct TYPE_5__ {int indirect_ctrl; } ;
struct TYPE_6__ {TYPE_1__ m2s; } ;
struct TYPE_7__ {TYPE_2__ m2s; } ;


 int AL_UDMA_PRINT_REG (struct al_udma*,char*,char*,int ,int ,int ) ;
 int al_dbg (char*,size_t) ;
 int al_reg_write32 (int *,size_t) ;
 int cfg ;
 int comp_cfg ;
 int dwrr_cfg_1 ;
 int dwrr_cfg_2 ;
 int dwrr_cfg_3 ;
 int m2s ;
 int * m2s_q ;
 int q_tx_pkt ;
 TYPE_4__ rlimit ;
 int sel_comp_fifo_status ;
 int sel_dwrr_status ;
 int sel_pref_fifo_status ;
 int sel_rate_limit_status ;
 int status ;
 int tcrbp_high ;
 int tcrbp_low ;
 int tcrhp ;
 int tdcp ;
 int tdrbp_high ;
 int tdrbp_low ;
 int tdrhp ;
 int tdrl ;
 int tdrtp ;

__attribute__((used)) static void al_udma_regs_m2s_q_print(struct al_udma *udma, uint32_t qid)
{
 al_dbg("M2S Q[%d] status regs:\n", qid);
 al_reg_write32(&udma->udma_regs->m2s.m2s.indirect_ctrl, qid);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s, sel_pref_fifo_status);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s, sel_comp_fifo_status);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s, sel_rate_limit_status);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s, sel_dwrr_status);

 al_dbg("M2S Q[%d] regs:\n", qid);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_q[qid], cfg);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_q[qid], status);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_q[qid], tdrbp_low);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_q[qid], tdrbp_high);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_q[qid], tdrl);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_q[qid], tdrhp);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_q[qid], tdrtp);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_q[qid], tdcp);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_q[qid], tcrbp_low);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_q[qid], tcrbp_high);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_q[qid], tcrhp);

 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_q[qid], rlimit.cfg_1s);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_q[qid], rlimit.cfg_cycle);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_q[qid],
   rlimit.cfg_token_size_1);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_q[qid],
   rlimit.cfg_token_size_2);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_q[qid], rlimit.mask);

 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_q[qid], dwrr_cfg_1);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_q[qid], dwrr_cfg_2);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_q[qid], dwrr_cfg_3);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_q[qid], comp_cfg);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_q[qid], q_tx_pkt);
}
