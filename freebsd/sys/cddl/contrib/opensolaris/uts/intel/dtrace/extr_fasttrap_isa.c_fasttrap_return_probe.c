
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct trapframe {int dummy; } ;
struct reg {uintptr_t r_rip; } ;
struct TYPE_4__ {int p_flag; int p_pid; struct TYPE_4__* p_parent; } ;
typedef TYPE_1__ proc_t ;
struct TYPE_5__ {uintptr_t t_dtrace_pc; uintptr_t t_dtrace_npc; scalar_t__ t_dtrace_astpc; scalar_t__ t_dtrace_scrpc; } ;


 int SVFORK ;
 TYPE_1__* curproc ;
 TYPE_2__* curthread ;
 int fasttrap_return_common (struct reg*,uintptr_t,int ,uintptr_t) ;
 int fill_frame_regs (struct trapframe*,struct reg*) ;

int
fasttrap_return_probe(struct trapframe *tf)
{
 struct reg reg, *rp;
 proc_t *p = curproc;
 uintptr_t pc = curthread->t_dtrace_pc;
 uintptr_t npc = curthread->t_dtrace_npc;

 fill_frame_regs(tf, &reg);
 rp = &reg;

 curthread->t_dtrace_pc = 0;
 curthread->t_dtrace_npc = 0;
 curthread->t_dtrace_scrpc = 0;
 curthread->t_dtrace_astpc = 0;
 rp->r_rip = pc;

 fasttrap_return_common(rp, pc, p->p_pid, npc);

 return (0);
}
