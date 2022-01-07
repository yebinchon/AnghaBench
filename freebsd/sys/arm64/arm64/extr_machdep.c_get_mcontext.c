
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct trapframe {int tf_spsr; int tf_elr; int tf_lr; int tf_sp; int * tf_x; } ;
struct thread {struct trapframe* td_frame; } ;
struct TYPE_4__ {int gp_spsr; int gp_elr; int gp_lr; int gp_sp; int * gp_x; } ;
struct TYPE_5__ {TYPE_1__ mc_gpregs; } ;
typedef TYPE_2__ mcontext_t ;


 int GET_MC_CLEAR_RET ;
 int PSR_C ;
 int memcpy (int *,int *,int) ;
 int nitems (int *) ;

int
get_mcontext(struct thread *td, mcontext_t *mcp, int clear_ret)
{
 struct trapframe *tf = td->td_frame;

 if (clear_ret & GET_MC_CLEAR_RET) {
  mcp->mc_gpregs.gp_x[0] = 0;
  mcp->mc_gpregs.gp_spsr = tf->tf_spsr & ~PSR_C;
 } else {
  mcp->mc_gpregs.gp_x[0] = tf->tf_x[0];
  mcp->mc_gpregs.gp_spsr = tf->tf_spsr;
 }

 memcpy(&mcp->mc_gpregs.gp_x[1], &tf->tf_x[1],
     sizeof(mcp->mc_gpregs.gp_x[1]) * (nitems(mcp->mc_gpregs.gp_x) - 1));

 mcp->mc_gpregs.gp_sp = tf->tf_sp;
 mcp->mc_gpregs.gp_lr = tf->tf_lr;
 mcp->mc_gpregs.gp_elr = tf->tf_elr;

 return (0);
}
