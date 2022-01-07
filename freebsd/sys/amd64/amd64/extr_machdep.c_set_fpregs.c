
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct fpreg {int dummy; } ;


 int critical_enter () ;
 int critical_exit () ;
 int fpuuserinited (struct thread*) ;
 int get_pcb_user_save_td (struct thread*) ;
 int set_fpregs_xmm (struct fpreg*,int ) ;

int
set_fpregs(struct thread *td, struct fpreg *fpregs)
{

 critical_enter();
 set_fpregs_xmm(fpregs, get_pcb_user_save_td(td));
 fpuuserinited(td);
 critical_exit();
 return (0);
}
