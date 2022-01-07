
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int cpu_thread_clean (struct thread*) ;

void
cpu_thread_free(struct thread *td)
{

 cpu_thread_clean(td);
}
