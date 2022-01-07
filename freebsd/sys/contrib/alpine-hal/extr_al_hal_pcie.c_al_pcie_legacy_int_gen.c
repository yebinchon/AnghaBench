
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int * events_gen; } ;
struct TYPE_6__ {TYPE_2__ global_ctrl; } ;
struct al_pcie_regs {TYPE_3__ app; } ;
struct al_pcie_pf {unsigned int pf_num; TYPE_1__* pcie_port; } ;
typedef enum al_pcie_legacy_int_type { ____Placeholder_al_pcie_legacy_int_type } al_pcie_legacy_int_type ;
typedef int al_bool ;
struct TYPE_4__ {struct al_pcie_regs* regs; } ;


 int AL_PCIE_LEGACY_INTA ;
 int AL_REG_BIT_VAL_SET (int ,int,int) ;
 int al_assert (int) ;
 int al_reg_read32 (int ) ;
 int al_reg_write32 (int ,int ) ;

int
al_pcie_legacy_int_gen(
 struct al_pcie_pf *pcie_pf,
 al_bool assert,
 enum al_pcie_legacy_int_type type)
{
 struct al_pcie_regs *regs = pcie_pf->pcie_port->regs;
 unsigned int pf_num = pcie_pf->pf_num;
 uint32_t reg;

 al_assert(type == AL_PCIE_LEGACY_INTA);
 reg = al_reg_read32(regs->app.global_ctrl.events_gen[pf_num]);
 AL_REG_BIT_VAL_SET(reg, 3, !!assert);
 al_reg_write32(regs->app.global_ctrl.events_gen[pf_num], reg);

 return 0;
}
