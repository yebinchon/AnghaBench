
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct trapframe {int tf_r1; int tf_r0; } ;
struct thread {int td_tid; struct trapframe* td_frame; } ;
struct TYPE_5__ {int ss_size; int ss_sp; } ;
typedef TYPE_1__ stack_t ;
struct TYPE_6__ {int argument; int entry_point; int stack_len; int stack; } ;
typedef TYPE_2__ cloudabi32_threadattr_t ;


 int TO_PTR (int ) ;
 int cpu_set_upcall (struct thread*,int ,int *,TYPE_1__*) ;
 int cpu_set_user_tls (struct thread*,int ) ;

int
cloudabi32_thread_setregs(struct thread *td,
    const cloudabi32_threadattr_t *attr, uint32_t tcb)
{
 struct trapframe *frame;
 stack_t stack;


 stack.ss_sp = TO_PTR(attr->stack);
 stack.ss_size = attr->stack_len;
 cpu_set_upcall(td, TO_PTR(attr->entry_point), ((void*)0), &stack);






 frame = td->td_frame;
 frame->tf_r0 = td->td_tid;
 frame->tf_r1 = attr->argument;


 return (cpu_set_user_tls(td, TO_PTR(tcb)));
}
