
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int slv_ctl; } ;
struct TYPE_6__ {int io_limit_l; int io_limit_h; int io_start_l; int io_start_h; } ;
struct TYPE_5__ {TYPE_1__ ctrl; TYPE_3__ ob_ctrl; } ;
struct al_pcie_regs {TYPE_2__ axi; } ;
struct al_pcie_port {struct al_pcie_regs* regs; } ;
typedef int al_phys_addr_t ;


 int PCIE_AXI_CTRL_SLV_CTRL_IO_BAR_EN ;
 int al_reg_write32 (int ,int ) ;
 int al_reg_write32_masked (int ,int ,int ) ;

void
al_pcie_axi_io_config(
 struct al_pcie_port *pcie_port,
 al_phys_addr_t start,
 al_phys_addr_t end)
{
 struct al_pcie_regs *regs = pcie_port->regs;

 al_reg_write32(regs->axi.ob_ctrl.io_start_h,
   (uint32_t)((start >> 32) & 0xFFFFFFFF));

 al_reg_write32(regs->axi.ob_ctrl.io_start_l,
   (uint32_t)(start & 0xFFFFFFFF));

 al_reg_write32(regs->axi.ob_ctrl.io_limit_h,
   (uint32_t)((end >> 32) & 0xFFFFFFFF));

 al_reg_write32(regs->axi.ob_ctrl.io_limit_l,
   (uint32_t)(end & 0xFFFFFFFF));

 al_reg_write32_masked(regs->axi.ctrl.slv_ctl,
         PCIE_AXI_CTRL_SLV_CTRL_IO_BAR_EN,
         PCIE_AXI_CTRL_SLV_CTRL_IO_BAR_EN);
}
