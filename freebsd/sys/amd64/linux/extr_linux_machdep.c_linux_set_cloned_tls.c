
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct thread {TYPE_1__* td_frame; struct pcb* td_pcb; } ;
struct pcb {scalar_t__ pcb_fsbase; } ;
typedef scalar_t__ register_t ;
struct TYPE_2__ {int tf_fs; } ;


 int EPERM ;
 scalar_t__ VM_MAXUSER_ADDRESS ;
 int _ufssel ;

int
linux_set_cloned_tls(struct thread *td, void *desc)
{
 struct pcb *pcb;

 if ((uint64_t)desc >= VM_MAXUSER_ADDRESS)
  return (EPERM);

 pcb = td->td_pcb;
 pcb->pcb_fsbase = (register_t)desc;
 td->td_frame->tf_fs = _ufssel;

 return (0);
}
