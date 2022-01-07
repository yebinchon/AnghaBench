
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pid_t ;
typedef TYPE_1__* gdb_ps_prochandle_t ;
struct TYPE_3__ {int pid; } ;



pid_t
ps_getpid (gdb_ps_prochandle_t ph)
{
  return ph->pid;
}
