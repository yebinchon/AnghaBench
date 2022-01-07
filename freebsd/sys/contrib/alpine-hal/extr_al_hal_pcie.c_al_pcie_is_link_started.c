
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int port_init; } ;
struct TYPE_4__ {TYPE_1__ global_ctrl; } ;
struct al_pcie_regs {TYPE_2__ app; } ;
struct al_pcie_port {scalar_t__ regs; } ;
typedef int al_bool ;


 int AL_REG_FIELD_GET (int ,int ,int ) ;
 int PCIE_W_GLOBAL_CTRL_PORT_INIT_APP_LTSSM_EN_MASK ;
 int PCIE_W_GLOBAL_CTRL_PORT_INIT_APP_LTSSM_EN_SHIFT ;
 int al_reg_read32 (int ) ;

al_bool al_pcie_is_link_started(struct al_pcie_port *pcie_port)
{
 struct al_pcie_regs *regs = (struct al_pcie_regs *)pcie_port->regs;

 uint32_t port_init = al_reg_read32(regs->app.global_ctrl.port_init);
 uint8_t ltssm_en = AL_REG_FIELD_GET(port_init,
  PCIE_W_GLOBAL_CTRL_PORT_INIT_APP_LTSSM_EN_MASK,
  PCIE_W_GLOBAL_CTRL_PORT_INIT_APP_LTSSM_EN_SHIFT);

 return ltssm_en;
}
