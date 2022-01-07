
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trapframe {int tf_spsr; } ;
struct TYPE_2__ {scalar_t__ md_spinlock_count; } ;
struct thread {TYPE_1__ td_md; scalar_t__ td_pticks; struct trapframe* td_frame; } ;


 int PSR_F ;
 int PSR_I ;
 scalar_t__ __predict_true (int) ;
 struct thread* curthread ;
 int enable_interrupts (int) ;
 int syscall (struct thread*,struct trapframe*) ;

void
swi_handler(struct trapframe *frame)
{
 struct thread *td = curthread;

 td->td_frame = frame;

 td->td_pticks = 0;






 if (td->td_md.md_spinlock_count == 0) {
  if (__predict_true(frame->tf_spsr & PSR_I) == 0)
   enable_interrupts(PSR_I);
  if (__predict_true(frame->tf_spsr & PSR_F) == 0)
   enable_interrupts(PSR_F);
 }

 syscall(td, frame);
}
