
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_udma {int dummy; } ;


 int AL_UDMA_PRINT_REG (struct al_udma*,char*,char*,int ,int ,int ) ;
 int AL_UDMA_PRINT_REG_FIELD (struct al_udma*,char*,char*,char*,int ,int ,int ,int ,int ) ;
 int UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR ;
 int UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_BELOW_THR ;
 int UDMA_M2S_RD_DESC_PREF_CFG_3_PREF_THR ;
 int al_dbg (char*) ;
 int data_cfg ;
 int desc_pref_cfg_1 ;
 int desc_pref_cfg_2 ;
 int desc_pref_cfg_3 ;
 int m2s ;
 int m2s_rd ;
 int min_burst_above_thr ;
 int min_burst_below_thr ;
 int pref_thr ;

__attribute__((used)) static void al_udma_regs_m2s_rd_print(struct al_udma *udma)
{
 al_dbg("M2S read regs:\n");
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_rd, desc_pref_cfg_1);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_rd, desc_pref_cfg_2);

 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_rd, desc_pref_cfg_3);
 AL_UDMA_PRINT_REG_FIELD(udma, "  ", "\n", "%d", m2s, m2s_rd,
   desc_pref_cfg_3,
   min_burst_below_thr,
   UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_BELOW_THR);
 AL_UDMA_PRINT_REG_FIELD(udma, "  ", "\n", "%d", m2s, m2s_rd,
   desc_pref_cfg_3,
   min_burst_above_thr,
   UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR);
 AL_UDMA_PRINT_REG_FIELD(udma, "  ", "\n", "%d", m2s, m2s_rd,
   desc_pref_cfg_3,
   pref_thr,
   UDMA_M2S_RD_DESC_PREF_CFG_3_PREF_THR);

 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_rd, data_cfg);
}
