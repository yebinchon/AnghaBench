
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_dbgflags; TYPE_1__* td_frame; int td_proc; } ;
struct TYPE_2__ {int tf_rflags; } ;


 int MA_OWNED ;
 int PROC_LOCK_ASSERT (int ,int ) ;
 int PSL_T ;
 int TDB_STEP ;

int
ptrace_clear_single_step(struct thread *td)
{

 PROC_LOCK_ASSERT(td->td_proc, MA_OWNED);
 td->td_frame->tf_rflags &= ~PSL_T;
 td->td_dbgflags &= ~TDB_STEP;
 return (0);
}
