
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int conf; } ;
struct TYPE_4__ {TYPE_1__ pcie_global; } ;
struct al_pcie_regs {TYPE_2__ axi; } ;
struct al_pcie_port {scalar_t__ rev_id; int port_id; struct al_pcie_regs* regs; } ;
typedef scalar_t__ al_bool ;


 scalar_t__ AL_PCIE_REV_ID_3 ;
 scalar_t__ AL_TRUE ;
 int EINVAL ;
 int PCIE_REV1_2_AXI_MISC_PCIE_GLOBAL_CONF_MEM_SHUTDOWN ;
 int PCIE_REV3_AXI_MISC_PCIE_GLOBAL_CONF_MEM_SHUTDOWN ;
 int al_err (char*,int ) ;
 int al_pcie_port_is_enabled (struct al_pcie_port*) ;
 int al_reg_write32_masked (int ,int ,int ) ;

int
al_pcie_port_memory_shutdown_set(
 struct al_pcie_port *pcie_port,
 al_bool enable)
{
 struct al_pcie_regs *regs = pcie_port->regs;
 uint32_t mask = (pcie_port->rev_id == AL_PCIE_REV_ID_3) ?
  PCIE_REV3_AXI_MISC_PCIE_GLOBAL_CONF_MEM_SHUTDOWN :
  PCIE_REV1_2_AXI_MISC_PCIE_GLOBAL_CONF_MEM_SHUTDOWN;

 if (!al_pcie_port_is_enabled(pcie_port)) {
  al_err("PCIe %d: not enabled, cannot shutdown memory\n",
   pcie_port->port_id);
  return -EINVAL;
 }

 al_reg_write32_masked(regs->axi.pcie_global.conf,
  mask, enable == AL_TRUE ? mask : 0);

 return 0;
}
