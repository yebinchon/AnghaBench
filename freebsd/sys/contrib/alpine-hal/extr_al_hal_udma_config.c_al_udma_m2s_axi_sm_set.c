
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct al_udma_axi_submaster {int id; int cache_type; int burst; int used_ext; int bus_size; int qos; int prot; int max_beats; } ;


 int UDMA_AXI_M2S_COMP_WR_CFG_1_AWBURST_MASK ;
 int UDMA_AXI_M2S_COMP_WR_CFG_1_AWBURST_SHIFT ;
 int UDMA_AXI_M2S_COMP_WR_CFG_1_AWCACHE_MASK ;
 int UDMA_AXI_M2S_COMP_WR_CFG_1_AWCACHE_SHIFT ;
 int UDMA_AXI_M2S_COMP_WR_CFG_1_AWID_MASK ;
 int UDMA_AXI_M2S_COMP_WR_CFG_2_AWPROT_MASK ;
 int UDMA_AXI_M2S_COMP_WR_CFG_2_AWPROT_SHIFT ;
 int UDMA_AXI_M2S_COMP_WR_CFG_2_AWQOS_MASK ;
 int UDMA_AXI_M2S_COMP_WR_CFG_2_AWQOS_SHIFT ;
 int UDMA_AXI_M2S_COMP_WR_CFG_2_AWSIZE_MASK ;
 int UDMA_AXI_M2S_COMP_WR_CFG_2_AWSIZE_SHIFT ;
 int UDMA_AXI_M2S_COMP_WR_CFG_2_AWUSER_MASK ;
 int UDMA_AXI_M2S_DESC_WR_CFG_1_MAX_AXI_BEATS_MASK ;
 int al_reg_read32 (int*) ;
 int al_reg_write32 (int*,int) ;

__attribute__((used)) static int al_udma_m2s_axi_sm_set(struct al_udma_axi_submaster *m2s_sm,
          uint32_t *cfg_1, uint32_t *cfg_2,
          uint32_t *cfg_max_beats)
{
 uint32_t reg;
 reg = al_reg_read32(cfg_1);
 reg &= ~UDMA_AXI_M2S_COMP_WR_CFG_1_AWID_MASK;
 reg |= m2s_sm->id & UDMA_AXI_M2S_COMP_WR_CFG_1_AWID_MASK;
 reg &= ~UDMA_AXI_M2S_COMP_WR_CFG_1_AWCACHE_MASK;
 reg |= (m2s_sm->cache_type <<
   UDMA_AXI_M2S_COMP_WR_CFG_1_AWCACHE_SHIFT) &
  UDMA_AXI_M2S_COMP_WR_CFG_1_AWCACHE_MASK;
 reg &= ~UDMA_AXI_M2S_COMP_WR_CFG_1_AWBURST_MASK;
 reg |= (m2s_sm->burst << UDMA_AXI_M2S_COMP_WR_CFG_1_AWBURST_SHIFT) &
  UDMA_AXI_M2S_COMP_WR_CFG_1_AWBURST_MASK;
 al_reg_write32(cfg_1, reg);

 reg = al_reg_read32(cfg_2);
 reg &= ~UDMA_AXI_M2S_COMP_WR_CFG_2_AWUSER_MASK;
 reg |= m2s_sm->used_ext & UDMA_AXI_M2S_COMP_WR_CFG_2_AWUSER_MASK;
 reg &= ~UDMA_AXI_M2S_COMP_WR_CFG_2_AWSIZE_MASK;
 reg |= (m2s_sm->bus_size <<
   UDMA_AXI_M2S_COMP_WR_CFG_2_AWSIZE_SHIFT) &
  UDMA_AXI_M2S_COMP_WR_CFG_2_AWSIZE_MASK;
 reg &= ~UDMA_AXI_M2S_COMP_WR_CFG_2_AWQOS_MASK;
 reg |= (m2s_sm->qos << UDMA_AXI_M2S_COMP_WR_CFG_2_AWQOS_SHIFT) &
  UDMA_AXI_M2S_COMP_WR_CFG_2_AWQOS_MASK;
 reg &= ~UDMA_AXI_M2S_COMP_WR_CFG_2_AWPROT_MASK;
 reg |= (m2s_sm->prot << UDMA_AXI_M2S_COMP_WR_CFG_2_AWPROT_SHIFT) &
  UDMA_AXI_M2S_COMP_WR_CFG_2_AWPROT_MASK;
 al_reg_write32(cfg_2, reg);

 reg = al_reg_read32(cfg_max_beats);
 reg &= ~UDMA_AXI_M2S_DESC_WR_CFG_1_MAX_AXI_BEATS_MASK;
 reg |= m2s_sm->max_beats &
   UDMA_AXI_M2S_DESC_WR_CFG_1_MAX_AXI_BEATS_MASK;
 al_reg_write32(cfg_max_beats, reg);

 return 0;
}
