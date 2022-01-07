
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct al_udma {TYPE_3__* udma_regs; } ;
struct TYPE_4__ {int desc_pref_cfg_3; int desc_pref_cfg_2; } ;
struct TYPE_5__ {TYPE_1__ m2s_rd; } ;
struct TYPE_6__ {TYPE_2__ m2s; } ;


 int AL_UDMA_M2S_MAX_ALLOWED_DESCS_PER_PACKET ;
 int UDMA_M2S_RD_DESC_PREF_CFG_2_MAX_DESC_PER_PKT_MASK ;
 int UDMA_M2S_RD_DESC_PREF_CFG_2_MAX_DESC_PER_PKT_SHIFT ;
 int UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR_MASK ;
 int UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR_SHIFT ;
 int UDMA_M2S_RD_DESC_PREF_CFG_3_PREF_THR_MASK ;
 int UDMA_M2S_RD_DESC_PREF_CFG_3_PREF_THR_SHIFT ;
 int al_assert (int) ;
 int al_reg_write32_masked (int *,int,int) ;

int al_udma_m2s_max_descs_set(struct al_udma *udma, uint8_t max_descs)
{
 uint32_t pref_thr = max_descs;
 uint32_t min_burst_above_thr = 4;
 al_assert(max_descs <= AL_UDMA_M2S_MAX_ALLOWED_DESCS_PER_PACKET);
 al_assert(max_descs > 0);



 if (pref_thr >= 8)
  min_burst_above_thr = 8;
 else {


  pref_thr = 4;
 }

 al_reg_write32_masked(&udma->udma_regs->m2s.m2s_rd.desc_pref_cfg_2,
         UDMA_M2S_RD_DESC_PREF_CFG_2_MAX_DESC_PER_PKT_MASK,
         max_descs << UDMA_M2S_RD_DESC_PREF_CFG_2_MAX_DESC_PER_PKT_SHIFT);

 al_reg_write32_masked(&udma->udma_regs->m2s.m2s_rd.desc_pref_cfg_3,
         UDMA_M2S_RD_DESC_PREF_CFG_3_PREF_THR_MASK |
         UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR_MASK,
         (pref_thr << UDMA_M2S_RD_DESC_PREF_CFG_3_PREF_THR_SHIFT) |
         (min_burst_above_thr << UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR_SHIFT));

 return 0;
}
