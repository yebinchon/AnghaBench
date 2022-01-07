
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* int_grp_b; TYPE_1__* parity; } ;
struct al_pcie_regs {TYPE_3__ app; } ;
struct al_pcie_port {struct al_pcie_regs* regs; } ;
typedef scalar_t__ al_bool ;
struct TYPE_5__ {int mask; } ;
struct TYPE_4__ {int en_core; } ;


 scalar_t__ AL_TRUE ;
 int PCIE_W_INT_GRP_B_CAUSE_B_PARITY_ERROR_CORE ;
 int al_reg_write32 (int *,int) ;
 int al_reg_write32_masked (int *,int ,int ) ;

__attribute__((used)) static void
al_pcie_port_ram_parity_int_config(
 struct al_pcie_port *pcie_port,
 al_bool enable)
{
 struct al_pcie_regs *regs = pcie_port->regs;

 al_reg_write32(&regs->app.parity->en_core,
  (enable == AL_TRUE) ? 0xffffffff : 0x0);

 al_reg_write32_masked(&regs->app.int_grp_b->mask,
       PCIE_W_INT_GRP_B_CAUSE_B_PARITY_ERROR_CORE,
       (enable != AL_TRUE) ?
       PCIE_W_INT_GRP_B_CAUSE_B_PARITY_ERROR_CORE : 0);

}
