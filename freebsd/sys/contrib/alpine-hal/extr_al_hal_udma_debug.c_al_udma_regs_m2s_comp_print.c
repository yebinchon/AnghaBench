
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_udma {int dummy; } ;


 int AL_UDMA_PRINT_REG (struct al_udma*,char*,char*,int ,int ,int ) ;
 int AL_UDMA_PRINT_REG_BIT (struct al_udma*,char*,char*,int ,int ,int ,int ,int ) ;
 int AL_UDMA_PRINT_REG_FIELD (struct al_udma*,char*,char*,char*,int ,int ,int ,int ,int ) ;
 int UDMA_M2S_COMP_CFG_1C_COMP_FIFO_DEPTH ;
 int UDMA_M2S_COMP_CFG_1C_FORCE_RR ;
 int UDMA_M2S_COMP_CFG_1C_Q_FREE_MIN ;
 int UDMA_M2S_COMP_CFG_1C_Q_PROMOTION ;
 int UDMA_M2S_COMP_CFG_1C_UNACK_FIFO_DEPTH ;
 int al_dbg (char*) ;
 int cfg_1c ;
 int cfg_application_ack ;
 int cfg_coal ;
 int comp_fifo_depth ;
 int force_rr ;
 int m2s ;
 int m2s_comp ;
 int q_free_min ;
 int q_promotion ;
 int unack_fifo_depth ;

__attribute__((used)) static void al_udma_regs_m2s_comp_print(struct al_udma *udma)
{
 al_dbg("M2S completion regs:\n");

 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_comp, cfg_1c);

 AL_UDMA_PRINT_REG_FIELD(udma, "  ", "\n", "%d", m2s, m2s_comp, cfg_1c,
   comp_fifo_depth,
   UDMA_M2S_COMP_CFG_1C_COMP_FIFO_DEPTH);
 AL_UDMA_PRINT_REG_FIELD(udma, "  ", "\n", "%d", m2s, m2s_comp, cfg_1c,
   unack_fifo_depth,
   UDMA_M2S_COMP_CFG_1C_UNACK_FIFO_DEPTH);
 AL_UDMA_PRINT_REG_BIT(udma, "  ", "\n", m2s, m2s_comp, cfg_1c,
   q_promotion,
   UDMA_M2S_COMP_CFG_1C_Q_PROMOTION);
 AL_UDMA_PRINT_REG_BIT(udma, "  ", "\n", m2s, m2s_comp, cfg_1c,
   force_rr,
   UDMA_M2S_COMP_CFG_1C_FORCE_RR);
 AL_UDMA_PRINT_REG_FIELD(udma, "  ", "\n", "%d", m2s, m2s_comp, cfg_1c,
   q_free_min,
   UDMA_M2S_COMP_CFG_1C_Q_FREE_MIN);

 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_comp, cfg_coal);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_comp, cfg_application_ack);
}
