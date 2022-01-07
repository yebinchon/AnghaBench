
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cloudabi_sys_thread_yield_args {int dummy; } ;


 int sched_relinquish (struct thread*) ;

int
cloudabi_sys_thread_yield(struct thread *td,
    struct cloudabi_sys_thread_yield_args *uap)
{

 sched_relinquish(td);
 return (0);
}
