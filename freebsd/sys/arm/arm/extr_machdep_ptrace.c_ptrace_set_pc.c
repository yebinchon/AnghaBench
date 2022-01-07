
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_frame; } ;
struct TYPE_2__ {unsigned long tf_pc; } ;



int
ptrace_set_pc(struct thread *td, unsigned long addr)
{
 td->td_frame->tf_pc = addr;
 return (0);
}
