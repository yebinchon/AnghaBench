
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct al_pcie_port {int port_id; scalar_t__ pbs_regs; } ;
struct TYPE_2__ {int pcie_conf_1; } ;
struct al_pbs_regs {TYPE_1__ unit; } ;
typedef int al_bool ;


 int AL_BIT (int ) ;
 int AL_REG_FIELD_GET (int,int ,int ) ;
 int PBS_UNIT_PCIE_CONF_1_PCIE_EXIST_MASK ;
 int PBS_UNIT_PCIE_CONF_1_PCIE_EXIST_SHIFT ;
 int al_reg_read32 (int *) ;

al_bool
al_pcie_port_is_enabled(struct al_pcie_port *pcie_port)
{
 struct al_pbs_regs *pbs_reg_base = (struct al_pbs_regs *)pcie_port->pbs_regs;
 uint32_t pcie_exist = al_reg_read32(&pbs_reg_base->unit.pcie_conf_1);

 uint32_t ports_enabled = AL_REG_FIELD_GET(pcie_exist,
  PBS_UNIT_PCIE_CONF_1_PCIE_EXIST_MASK,
  PBS_UNIT_PCIE_CONF_1_PCIE_EXIST_SHIFT);

 return (AL_REG_FIELD_GET(ports_enabled, AL_BIT(pcie_port->port_id),
  pcie_port->port_id) == 1);
}
