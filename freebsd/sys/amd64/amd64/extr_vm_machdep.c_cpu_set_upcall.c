
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct thread {TYPE_1__* td_frame; int td_proc; } ;
struct TYPE_5__ {uintptr_t ss_size; scalar_t__ ss_sp; } ;
typedef TYPE_2__ stack_t ;
typedef int register_t ;
typedef int int32_t ;
struct TYPE_4__ {uintptr_t tf_rsp; uintptr_t tf_rip; int tf_rdi; int tf_flags; int tf_gs; int tf_fs; void* tf_es; void* tf_ds; scalar_t__ tf_rbp; } ;


 int SV_ILP32 ;
 scalar_t__ SV_PROC_FLAG (int ,int ) ;
 int TF_HASSEGS ;
 void* _udatasel ;
 int _ufssel ;
 int _ugssel ;
 int cpu_thread_clean (struct thread*) ;
 int suword (void*,int ) ;
 int suword32 (void*,int ) ;

void
cpu_set_upcall(struct thread *td, void (*entry)(void *), void *arg,
    stack_t *stack)
{
 cpu_thread_clean(td);
 td->td_frame->tf_rbp = 0;
 td->td_frame->tf_rsp =
     ((register_t)stack->ss_sp + stack->ss_size) & ~0x0f;
 td->td_frame->tf_rsp -= 8;
 td->td_frame->tf_rip = (register_t)entry;
 td->td_frame->tf_ds = _udatasel;
 td->td_frame->tf_es = _udatasel;
 td->td_frame->tf_fs = _ufssel;
 td->td_frame->tf_gs = _ugssel;
 td->td_frame->tf_flags = TF_HASSEGS;


 suword((void *)td->td_frame->tf_rsp, 0);


 td->td_frame->tf_rdi = (register_t)arg;
}
