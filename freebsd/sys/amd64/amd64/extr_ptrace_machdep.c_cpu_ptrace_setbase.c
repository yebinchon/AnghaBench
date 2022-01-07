
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_frame; struct pcb* td_pcb; } ;
struct pcb {void* pcb_gsbase; void* pcb_fsbase; } ;
typedef void* register_t ;
struct TYPE_2__ {int tf_gs; int tf_fs; } ;


 int PCB_FULL_IRET ;
 int PT_SETFSBASE ;
 int _ufssel ;
 int _ugssel ;
 int set_pcb_flags (struct pcb*,int ) ;

__attribute__((used)) static void
cpu_ptrace_setbase(struct thread *td, int req, register_t r)
{
 struct pcb *pcb;

 pcb = td->td_pcb;
 set_pcb_flags(pcb, PCB_FULL_IRET);
 if (req == PT_SETFSBASE) {
  pcb->pcb_fsbase = r;
  td->td_frame->tf_fs = _ufssel;
 } else {
  pcb->pcb_gsbase = r;
  td->td_frame->tf_gs = _ugssel;
 }
}
