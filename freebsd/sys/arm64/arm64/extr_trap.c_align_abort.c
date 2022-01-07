
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct trapframe {scalar_t__ tf_elr; } ;
struct thread {int dummy; } ;


 int BUS_ADRALN ;
 int SIGBUS ;
 int call_trapsignal (struct thread*,int ,int ,void*) ;
 int panic (char*) ;
 int userret (struct thread*,struct trapframe*) ;

__attribute__((used)) static void
align_abort(struct thread *td, struct trapframe *frame, uint64_t esr,
    uint64_t far, int lower)
{
 if (!lower)
  panic("Misaligned access from kernel space!");

 call_trapsignal(td, SIGBUS, BUS_ADRALN, (void *)frame->tf_elr);
 userret(td, frame);
}
