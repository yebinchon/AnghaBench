
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmspace {scalar_t__ vm_daddr; int vm_dsize; } ;
struct thread {void** td_retval; TYPE_1__* td_proc; } ;
struct linux_brk_args {scalar_t__ dsend; } ;
typedef void* register_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {struct vmspace* p_vmspace; } ;


 uintptr_t ctob (int ) ;
 int kern_break (struct thread*,uintptr_t*) ;

int
linux_brk(struct thread *td, struct linux_brk_args *args)
{
 struct vmspace *vm = td->td_proc->p_vmspace;
 uintptr_t new, old;

 old = (uintptr_t)vm->vm_daddr + ctob(vm->vm_dsize);
 new = (uintptr_t)args->dsend;
 if ((caddr_t)new > vm->vm_daddr && !kern_break(td, &new))
  td->td_retval[0] = (register_t)new;
 else
  td->td_retval[0] = (register_t)old;

 return (0);
}
