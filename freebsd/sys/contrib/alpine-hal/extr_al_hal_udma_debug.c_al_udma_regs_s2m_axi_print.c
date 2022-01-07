
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_udma {int dummy; } ;


 int AL_UDMA_PRINT_REG (struct al_udma*,char*,char*,int ,int ,int ) ;
 int al_dbg (char*) ;
 int axi_s2m ;
 int comp_wr_cfg_1 ;
 int comp_wr_cfg_2 ;
 int data_wr_cfg ;
 int data_wr_cfg_1 ;
 int data_wr_cfg_2 ;
 int desc_rd_cfg_3 ;
 int desc_rd_cfg_4 ;
 int desc_rd_cfg_5 ;
 int desc_wr_cfg_1 ;
 int ostand_cfg_rd ;
 int ostand_cfg_wr ;
 int s2m ;

__attribute__((used)) static void al_udma_regs_s2m_axi_print(struct al_udma *udma)
{
 al_dbg("S2M AXI regs:\n");
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, axi_s2m, data_wr_cfg_1);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, axi_s2m, data_wr_cfg_2);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, axi_s2m, desc_rd_cfg_4);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, axi_s2m, desc_rd_cfg_5);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, axi_s2m, comp_wr_cfg_1);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, axi_s2m, comp_wr_cfg_2);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, axi_s2m, data_wr_cfg);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, axi_s2m, desc_rd_cfg_3);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, axi_s2m, desc_wr_cfg_1);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, axi_s2m, ostand_cfg_rd);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, axi_s2m, ostand_cfg_wr);
}
