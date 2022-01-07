
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_esr; scalar_t__ tf_elr; } ;
struct thread {int dummy; } ;


 int ESR_ELx_ISS_MASK ;
 int ILL_ILLOPN ;
 int SIGILL ;
 int call_trapsignal (struct thread*,int ,int ,void*) ;
 int syscallenter (struct thread*) ;
 int syscallret (struct thread*) ;
 int userret (struct thread*,struct trapframe*) ;

__attribute__((used)) static void
svc_handler(struct thread *td, struct trapframe *frame)
{

 if ((frame->tf_esr & ESR_ELx_ISS_MASK) == 0) {
  syscallenter(td);
  syscallret(td);
 } else {
  call_trapsignal(td, SIGILL, ILL_ILLOPN, (void *)frame->tf_elr);
  userret(td, frame);
 }
}
