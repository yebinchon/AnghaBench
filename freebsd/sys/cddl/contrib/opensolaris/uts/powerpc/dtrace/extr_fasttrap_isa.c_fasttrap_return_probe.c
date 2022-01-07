
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct trapframe {int dummy; } ;
struct reg {uintptr_t pc; } ;
struct TYPE_5__ {int p_pid; } ;
typedef TYPE_1__ proc_t ;
struct TYPE_6__ {uintptr_t t_dtrace_pc; uintptr_t t_dtrace_npc; scalar_t__ t_dtrace_astpc; scalar_t__ t_dtrace_scrpc; } ;


 TYPE_1__* curproc ;
 TYPE_2__* curthread ;
 int fasttrap_return_common (struct reg*,uintptr_t,int ,uintptr_t) ;
 int fill_regs (TYPE_2__*,struct reg*) ;

int
fasttrap_return_probe(struct trapframe *tf)
{
 struct reg reg, *rp;
 proc_t *p = curproc;
 uintptr_t pc = curthread->t_dtrace_pc;
 uintptr_t npc = curthread->t_dtrace_npc;

 curthread->t_dtrace_pc = 0;
 curthread->t_dtrace_npc = 0;
 curthread->t_dtrace_scrpc = 0;
 curthread->t_dtrace_astpc = 0;

 fill_regs(curthread, &reg);
 rp = &reg;






 rp->pc = pc;

 fasttrap_return_common(rp, pc, p->p_pid, npc);

 return (0);
}
