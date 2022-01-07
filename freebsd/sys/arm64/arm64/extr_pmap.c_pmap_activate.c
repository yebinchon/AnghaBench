
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; } ;
typedef int pmap_t ;
struct TYPE_2__ {int p_vmspace; } ;


 int critical_enter () ;
 int critical_exit () ;
 int pmap_activate_int (int ) ;
 int vmspace_pmap (int ) ;

void
pmap_activate(struct thread *td)
{
 pmap_t pmap;

 pmap = vmspace_pmap(td->td_proc->p_vmspace);
 critical_enter();
 (void)pmap_activate_int(pmap);
 critical_exit();
}
