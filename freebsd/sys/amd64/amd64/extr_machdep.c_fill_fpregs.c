
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_proc; } ;
struct fpreg {int dummy; } ;


 int KASSERT (int,char*) ;
 scalar_t__ P_SHOULDSTOP (int ) ;
 scalar_t__ TD_IS_SUSPENDED (struct thread*) ;
 struct thread* curthread ;
 int fill_fpregs_xmm (int ,struct fpreg*) ;
 int fpugetregs (struct thread*) ;
 int get_pcb_user_save_td (struct thread*) ;

int
fill_fpregs(struct thread *td, struct fpreg *fpregs)
{

 KASSERT(td == curthread || TD_IS_SUSPENDED(td) ||
     P_SHOULDSTOP(td->td_proc),
     ("not suspended thread %p", td));
 fpugetregs(td);
 fill_fpregs_xmm(get_pcb_user_save_td(td), fpregs);
 return (0);
}
