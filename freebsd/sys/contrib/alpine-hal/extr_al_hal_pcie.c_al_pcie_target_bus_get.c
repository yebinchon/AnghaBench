
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int cfg_target_bus; } ;
struct TYPE_4__ {TYPE_1__ ob_ctrl; } ;
struct al_pcie_regs {TYPE_2__ axi; } ;
struct al_pcie_port {scalar_t__ regs; } ;


 int AL_REG_FIELD_GET (int ,int ,int ) ;
 int PCIE_AXI_MISC_OB_CTRL_CFG_TARGET_BUS_BUSNUM_MASK ;
 int PCIE_AXI_MISC_OB_CTRL_CFG_TARGET_BUS_BUSNUM_SHIFT ;
 int PCIE_AXI_MISC_OB_CTRL_CFG_TARGET_BUS_MASK_MASK ;
 int PCIE_AXI_MISC_OB_CTRL_CFG_TARGET_BUS_MASK_SHIFT ;
 int al_assert (int *) ;
 int al_reg_read32 (int ) ;

int
al_pcie_target_bus_get(
 struct al_pcie_port *pcie_port,
 uint8_t *target_bus,
 uint8_t *mask_target_bus)
{
 struct al_pcie_regs *regs = (struct al_pcie_regs *)pcie_port->regs;
 uint32_t reg;

 al_assert(target_bus);
 al_assert(mask_target_bus);

 reg = al_reg_read32(regs->axi.ob_ctrl.cfg_target_bus);

 *mask_target_bus = AL_REG_FIELD_GET(reg,
    PCIE_AXI_MISC_OB_CTRL_CFG_TARGET_BUS_MASK_MASK,
    PCIE_AXI_MISC_OB_CTRL_CFG_TARGET_BUS_MASK_SHIFT);
 *target_bus = AL_REG_FIELD_GET(reg,
   PCIE_AXI_MISC_OB_CTRL_CFG_TARGET_BUS_BUSNUM_MASK,
   PCIE_AXI_MISC_OB_CTRL_CFG_TARGET_BUS_BUSNUM_SHIFT);
 return 0;
}
