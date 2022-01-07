
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct al_pcie_port {TYPE_2__* regs; } ;
typedef scalar_t__ al_bool ;
struct TYPE_4__ {TYPE_1__* port_regs; } ;
struct TYPE_3__ {int rd_only_wr_en; } ;


 scalar_t__ AL_FALSE ;
 scalar_t__ AL_TRUE ;
 int al_local_data_memory_barrier () ;
 int al_reg_write32 (int *,int) ;

__attribute__((used)) static void
al_pcie_port_wr_to_ro_set(struct al_pcie_port *pcie_port, al_bool enable)
{



 if (enable == AL_FALSE)
  al_local_data_memory_barrier();

 al_reg_write32(&pcie_port->regs->port_regs->rd_only_wr_en,
         (enable == AL_TRUE) ? 1 : 0);




 if (enable == AL_TRUE)
  al_local_data_memory_barrier();
}
