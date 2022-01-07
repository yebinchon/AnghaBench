
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_udma {int dummy; } ;


 int AL_UDMA_PRINT_REG (struct al_udma*,char*,char*,int ,int ,int ) ;
 int AL_UDMA_PRINT_REG_FIELD (struct al_udma*,char*,char*,char*,int ,int ,int ,int ,int ) ;
 int UDMA_AXI_M2S_DESC_WR_CFG_1_MAX_AXI_BEATS ;
 int UDMA_AXI_M2S_DESC_WR_CFG_1_MIN_AXI_BEATS ;
 int al_dbg (char*) ;
 int axi_m2s ;
 int comp_wr_cfg_1 ;
 int comp_wr_cfg_2 ;
 int data_rd_cfg ;
 int data_rd_cfg_1 ;
 int data_rd_cfg_2 ;
 int desc_rd_cfg_1 ;
 int desc_rd_cfg_2 ;
 int desc_rd_cfg_3 ;
 int desc_wr_cfg_1 ;
 int m2s ;
 int max_axi_beats ;
 int min_axi_beats ;
 int ostand_cfg ;

__attribute__((used)) static void al_udma_regs_m2s_axi_print(struct al_udma *udma)
{
 al_dbg("M2S AXI regs:\n");
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, axi_m2s, comp_wr_cfg_1);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, axi_m2s, comp_wr_cfg_2);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, axi_m2s, data_rd_cfg_1);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, axi_m2s, data_rd_cfg_2);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, axi_m2s, desc_rd_cfg_1);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, axi_m2s, desc_rd_cfg_2);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, axi_m2s, data_rd_cfg);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, axi_m2s, desc_rd_cfg_3);

 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, axi_m2s, desc_wr_cfg_1);
 AL_UDMA_PRINT_REG_FIELD(udma, "  ", "\n", "%d", m2s, axi_m2s,
   desc_wr_cfg_1,
   max_axi_beats,
   UDMA_AXI_M2S_DESC_WR_CFG_1_MAX_AXI_BEATS);
 AL_UDMA_PRINT_REG_FIELD(udma, "  ", "\n", "%d", m2s, axi_m2s,
   desc_wr_cfg_1,
   min_axi_beats,
   UDMA_AXI_M2S_DESC_WR_CFG_1_MIN_AXI_BEATS);

 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, axi_m2s, ostand_cfg);
}
