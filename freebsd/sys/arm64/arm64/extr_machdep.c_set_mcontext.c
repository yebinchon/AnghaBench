
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct trapframe {int tf_spsr; int tf_elr; int tf_lr; int tf_sp; int tf_x; } ;
struct thread {struct trapframe* td_frame; } ;
struct TYPE_4__ {int gp_spsr; int gp_elr; int gp_lr; int gp_sp; int gp_x; } ;
struct TYPE_5__ {TYPE_1__ mc_gpregs; } ;
typedef TYPE_2__ mcontext_t ;


 int EINVAL ;
 int PSR_AARCH32 ;
 int PSR_DAIF ;
 int PSR_M_EL0t ;
 int PSR_M_MASK ;
 int memcpy (int ,int ,int) ;

int
set_mcontext(struct thread *td, mcontext_t *mcp)
{
 struct trapframe *tf = td->td_frame;
 uint32_t spsr;

 spsr = mcp->mc_gpregs.gp_spsr;
 if ((spsr & PSR_M_MASK) != PSR_M_EL0t ||
     (spsr & PSR_AARCH32) != 0 ||
     (spsr & PSR_DAIF) != (td->td_frame->tf_spsr & PSR_DAIF))
  return (EINVAL);

 memcpy(tf->tf_x, mcp->mc_gpregs.gp_x, sizeof(tf->tf_x));

 tf->tf_sp = mcp->mc_gpregs.gp_sp;
 tf->tf_lr = mcp->mc_gpregs.gp_lr;
 tf->tf_elr = mcp->mc_gpregs.gp_elr;
 tf->tf_spsr = mcp->mc_gpregs.gp_spsr;

 return (0);
}
