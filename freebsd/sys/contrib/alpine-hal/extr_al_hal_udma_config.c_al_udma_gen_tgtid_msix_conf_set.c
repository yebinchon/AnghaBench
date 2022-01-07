
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cfg_tgtid_0; } ;
struct TYPE_4__ {TYPE_1__ tgtid; } ;
struct unit_regs {TYPE_2__ gen; } ;
struct al_udma_gen_tgtid_msix_conf {scalar_t__ sel; scalar_t__ access_en; } ;


 int UDMA_GEN_TGTID_CFG_TGTID_0_MSIX_TGTID_ACCESS_EN ;
 int UDMA_GEN_TGTID_CFG_TGTID_0_MSIX_TGTID_SEL ;
 int al_reg_write32_masked (int *,int,int) ;

void al_udma_gen_tgtid_msix_conf_set(
 struct unit_regs *unit_regs,
 struct al_udma_gen_tgtid_msix_conf *conf)
{
 al_reg_write32_masked(
  &unit_regs->gen.tgtid.cfg_tgtid_0,
  UDMA_GEN_TGTID_CFG_TGTID_0_MSIX_TGTID_ACCESS_EN |
  UDMA_GEN_TGTID_CFG_TGTID_0_MSIX_TGTID_SEL,
  (conf->access_en ? UDMA_GEN_TGTID_CFG_TGTID_0_MSIX_TGTID_ACCESS_EN : 0) |
  (conf->sel ? UDMA_GEN_TGTID_CFG_TGTID_0_MSIX_TGTID_SEL : 0));
}
