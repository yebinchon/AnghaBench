
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {scalar_t__ tf_rcx; } ;
struct thread {int td_pflags; int td_tid; struct trapframe* td_frame; } ;
typedef int retval ;
typedef int register_t ;


 int CLOUDABI_PROCESS_CHILD ;
 int TDP_FORKING ;
 int copyout (int *,void*,int) ;

__attribute__((used)) static void
cloudabi32_schedtail(struct thread *td)
{
 struct trapframe *frame = td->td_frame;
 register_t retval[2];


 if ((td->td_pflags & TDP_FORKING) != 0) {
  retval[0] = CLOUDABI_PROCESS_CHILD;
  retval[1] = td->td_tid;
  copyout(retval, (void *)frame->tf_rcx, sizeof(retval));
 }
}
