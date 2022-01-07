
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * events_gen; } ;
struct TYPE_6__ {TYPE_2__ global_ctrl; } ;
struct al_pcie_regs {TYPE_3__ app; } ;
struct al_pcie_pf {unsigned int pf_num; TYPE_1__* pcie_port; } ;
struct TYPE_4__ {struct al_pcie_regs* regs; } ;


 int AL_PCIE_FLR_DONE_INTERVAL ;
 int PCIE_W_GLOBAL_CTRL_EVENTS_GEN_FLR_PF_DONE ;
 int al_reg_write32_masked (int ,int ,int ) ;
 int al_udelay (int ) ;

int al_pcie_pf_flr_done_gen(struct al_pcie_pf *pcie_pf)
{
 struct al_pcie_regs *regs = pcie_pf->pcie_port->regs;
 unsigned int pf_num = pcie_pf->pf_num;

 al_reg_write32_masked(regs->app.global_ctrl.events_gen[pf_num],
   PCIE_W_GLOBAL_CTRL_EVENTS_GEN_FLR_PF_DONE,
   PCIE_W_GLOBAL_CTRL_EVENTS_GEN_FLR_PF_DONE);
 al_udelay(AL_PCIE_FLR_DONE_INTERVAL);
 al_reg_write32_masked(regs->app.global_ctrl.events_gen[pf_num],
   PCIE_W_GLOBAL_CTRL_EVENTS_GEN_FLR_PF_DONE, 0);
 return 0;
}
