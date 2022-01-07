
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proc_pid; } ;


 scalar_t__ CurChildren ;
 int NO_PID ;
 int ProcListSize ;
 TYPE_1__* ProcListVec ;

void
proc_list_clear()
{
 int i;


 for (i = 1; i < ProcListSize; i++)
  ProcListVec[i].proc_pid = NO_PID;
 CurChildren = 0;
}
