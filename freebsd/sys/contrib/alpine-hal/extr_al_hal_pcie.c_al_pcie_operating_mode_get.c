
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
struct al_pcie_port {int port_id; struct al_pcie_regs* regs; } ;
typedef enum al_pcie_operating_mode { ____Placeholder_al_pcie_operating_mode } al_pcie_operating_mode ;


 int AL_PCIE_OPERATING_MODE_EP ;
 int AL_PCIE_OPERATING_MODE_RC ;
 int AL_PCIE_OPERATING_MODE_UNKNOWN ;
 int AL_REG_FIELD_GET (int,int ,int ) ;

 int PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_MASK ;

 int PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_SHIFT ;
 int al_assert (struct al_pcie_port*) ;
 int al_err (char*,int ,int) ;
 int al_reg_read32 (int ) ;

enum al_pcie_operating_mode
al_pcie_operating_mode_get(
 struct al_pcie_port *pcie_port)
{
 struct al_pcie_regs *regs = pcie_port->regs;
 uint32_t reg, device_type;

 al_assert(pcie_port);

 reg = al_reg_read32(regs->axi.pcie_global.conf);

 device_type = AL_REG_FIELD_GET(reg,
   PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_MASK,
   PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_SHIFT);

 switch (device_type) {
 case 129:
  return AL_PCIE_OPERATING_MODE_EP;
 case 128:
  return AL_PCIE_OPERATING_MODE_RC;
 default:
  al_err("PCIe %d: unknown device type (%d) in global conf register.\n",
   pcie_port->port_id, device_type);
 }
 return AL_PCIE_OPERATING_MODE_UNKNOWN;
}
