
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct trapframe {int tf_elr; int * tf_x; } ;
struct thread {int td_tid; struct trapframe* td_frame; } ;
struct TYPE_3__ {int entry_point; scalar_t__ stack_len; scalar_t__ stack; int argument; } ;
typedef TYPE_1__ cloudabi32_threadattr_t ;


 int STACKALIGN (scalar_t__) ;
 int TO_PTR (int ) ;
 int cpu_set_user_tls (struct thread*,int ) ;
 int memset (struct trapframe*,int ,int) ;

int
cloudabi32_thread_setregs(struct thread *td,
    const cloudabi32_threadattr_t *attr, uint32_t tcb)
{
 struct trapframe *frame;






 frame = td->td_frame;
 memset(frame, 0, sizeof(*frame));
 frame->tf_x[0] = td->td_tid;
 frame->tf_x[1] = attr->argument;
 frame->tf_x[13] = STACKALIGN(attr->stack + attr->stack_len);
 frame->tf_elr = attr->entry_point;


 return (cpu_set_user_tls(td, TO_PTR(tcb)));
}
