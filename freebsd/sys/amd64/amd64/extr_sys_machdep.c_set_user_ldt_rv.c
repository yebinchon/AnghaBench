
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmspace {int dummy; } ;
struct thread {TYPE_1__* td_proc; } ;
struct TYPE_2__ {int p_md; struct vmspace* p_vmspace; } ;


 struct thread* curthread ;
 int set_user_ldt (int *) ;

__attribute__((used)) static void
set_user_ldt_rv(struct vmspace *vmsp)
{
 struct thread *td;

 td = curthread;
 if (vmsp != td->td_proc->p_vmspace)
  return;

 set_user_ldt(&td->td_proc->p_md);
}
