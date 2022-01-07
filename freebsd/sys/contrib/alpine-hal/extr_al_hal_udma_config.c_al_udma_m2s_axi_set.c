
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct al_udma_m2s_axi_conf {scalar_t__ break_on_max_boundary; int min_axi_beats; int ostand_max_data_read; int ostand_max_desc_read; int ostand_max_comp_req; int ostand_max_comp_write; int desc_read; int data_read; int comp_write; } ;
struct al_udma {TYPE_3__* udma_regs; } ;
struct TYPE_4__ {int ostand_cfg; int desc_wr_cfg_1; int data_rd_cfg; int desc_rd_cfg_3; int desc_rd_cfg_2; int desc_rd_cfg_1; int data_rd_cfg_2; int data_rd_cfg_1; int comp_wr_cfg_2; int comp_wr_cfg_1; } ;
struct TYPE_5__ {TYPE_1__ axi_m2s; } ;
struct TYPE_6__ {TYPE_2__ m2s; } ;


 scalar_t__ AL_TRUE ;
 int UDMA_AXI_M2S_DATA_RD_CFG_ALWAYS_BREAK_ON_MAX_BOUDRY ;
 int UDMA_AXI_M2S_DESC_WR_CFG_1_MIN_AXI_BEATS_MASK ;
 int UDMA_AXI_M2S_DESC_WR_CFG_1_MIN_AXI_BEATS_SHIFT ;
 int UDMA_AXI_M2S_OSTAND_CFG_MAX_COMP_DATA_WR_MASK ;
 int UDMA_AXI_M2S_OSTAND_CFG_MAX_COMP_DATA_WR_SHIFT ;
 int UDMA_AXI_M2S_OSTAND_CFG_MAX_COMP_REQ_MASK ;
 int UDMA_AXI_M2S_OSTAND_CFG_MAX_COMP_REQ_SHIFT ;
 int UDMA_AXI_M2S_OSTAND_CFG_MAX_DATA_RD_MASK ;
 int UDMA_AXI_M2S_OSTAND_CFG_MAX_DESC_RD_MASK ;
 int UDMA_AXI_M2S_OSTAND_CFG_MAX_DESC_RD_SHIFT ;
 int al_reg_read32 (int *) ;
 int al_reg_write32 (int *,int) ;
 int al_udma_m2s_axi_sm_set (int *,int *,int *,int *) ;

int al_udma_m2s_axi_set(struct al_udma *udma,
     struct al_udma_m2s_axi_conf *axi_m2s)
{
 uint32_t reg;

 al_udma_m2s_axi_sm_set(&axi_m2s->comp_write,
          &udma->udma_regs->m2s.axi_m2s.comp_wr_cfg_1,
          &udma->udma_regs->m2s.axi_m2s.comp_wr_cfg_2,
          &udma->udma_regs->m2s.axi_m2s.desc_wr_cfg_1);

 al_udma_m2s_axi_sm_set(&axi_m2s->data_read,
          &udma->udma_regs->m2s.axi_m2s.data_rd_cfg_1,
          &udma->udma_regs->m2s.axi_m2s.data_rd_cfg_2,
          &udma->udma_regs->m2s.axi_m2s.data_rd_cfg);

 al_udma_m2s_axi_sm_set(&axi_m2s->desc_read,
          &udma->udma_regs->m2s.axi_m2s.desc_rd_cfg_1,
          &udma->udma_regs->m2s.axi_m2s.desc_rd_cfg_2,
          &udma->udma_regs->m2s.axi_m2s.desc_rd_cfg_3);

 reg = al_reg_read32(&udma->udma_regs->m2s.axi_m2s.data_rd_cfg);
 if (axi_m2s->break_on_max_boundary == AL_TRUE)
  reg |= UDMA_AXI_M2S_DATA_RD_CFG_ALWAYS_BREAK_ON_MAX_BOUDRY;
 else
  reg &= ~UDMA_AXI_M2S_DATA_RD_CFG_ALWAYS_BREAK_ON_MAX_BOUDRY;
 al_reg_write32(&udma->udma_regs->m2s.axi_m2s.data_rd_cfg, reg);

 reg = al_reg_read32(&udma->udma_regs->m2s.axi_m2s.desc_wr_cfg_1);
 reg &= ~UDMA_AXI_M2S_DESC_WR_CFG_1_MIN_AXI_BEATS_MASK;
 reg |= (axi_m2s->min_axi_beats <<
   UDMA_AXI_M2S_DESC_WR_CFG_1_MIN_AXI_BEATS_SHIFT) &
  UDMA_AXI_M2S_DESC_WR_CFG_1_MIN_AXI_BEATS_MASK;
 al_reg_write32(&udma->udma_regs->m2s.axi_m2s.desc_wr_cfg_1, reg);

 reg = al_reg_read32(&udma->udma_regs->m2s.axi_m2s.ostand_cfg);
 reg &= ~UDMA_AXI_M2S_OSTAND_CFG_MAX_DATA_RD_MASK;
 reg |= axi_m2s->ostand_max_data_read &
   UDMA_AXI_M2S_OSTAND_CFG_MAX_DATA_RD_MASK;
 reg &= ~UDMA_AXI_M2S_OSTAND_CFG_MAX_DESC_RD_MASK;
 reg |= (axi_m2s->ostand_max_desc_read <<
   UDMA_AXI_M2S_OSTAND_CFG_MAX_DESC_RD_SHIFT) &
  UDMA_AXI_M2S_OSTAND_CFG_MAX_DESC_RD_MASK;
 reg &= ~UDMA_AXI_M2S_OSTAND_CFG_MAX_COMP_REQ_MASK;
 reg |= (axi_m2s->ostand_max_comp_req <<
   UDMA_AXI_M2S_OSTAND_CFG_MAX_COMP_REQ_SHIFT) &
  UDMA_AXI_M2S_OSTAND_CFG_MAX_COMP_REQ_MASK;
 reg &= ~UDMA_AXI_M2S_OSTAND_CFG_MAX_COMP_DATA_WR_MASK;
 reg |= (axi_m2s->ostand_max_comp_write <<
   UDMA_AXI_M2S_OSTAND_CFG_MAX_COMP_DATA_WR_SHIFT) &
  UDMA_AXI_M2S_OSTAND_CFG_MAX_COMP_DATA_WR_MASK;
 al_reg_write32(&udma->udma_regs->m2s.axi_m2s.ostand_cfg, reg);
 return 0;
}
