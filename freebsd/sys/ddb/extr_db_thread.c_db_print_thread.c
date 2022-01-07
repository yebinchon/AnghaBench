
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_4__ {scalar_t__ td_tid; TYPE_1__* td_proc; } ;
struct TYPE_3__ {int p_pid; } ;


 int db_printf (char*,int,long) ;
 TYPE_2__* kdb_thread ;

void
db_print_thread(void)
{
 pid_t pid;

 pid = -1;
 if (kdb_thread->td_proc != ((void*)0))
  pid = kdb_thread->td_proc->p_pid;
 db_printf("[ thread pid %d tid %ld ]\n", pid, (long)kdb_thread->td_tid);
}
