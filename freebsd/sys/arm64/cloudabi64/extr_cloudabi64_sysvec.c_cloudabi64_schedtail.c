
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int * tf_x; } ;
struct thread {int td_pflags; int td_tid; struct trapframe* td_frame; } ;


 int CLOUDABI_PROCESS_CHILD ;
 int TDP_FORKING ;

__attribute__((used)) static void
cloudabi64_schedtail(struct thread *td)
{
 struct trapframe *frame = td->td_frame;






 if ((td->td_pflags & TDP_FORKING) != 0) {
  frame->tf_x[0] = CLOUDABI_PROCESS_CHILD;
  frame->tf_x[1] = td->td_tid;
 }
}
