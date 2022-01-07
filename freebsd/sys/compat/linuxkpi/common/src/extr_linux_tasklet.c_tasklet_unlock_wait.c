
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tasklet_struct {int dummy; } ;


 scalar_t__ TASKLET_ST_GET (struct tasklet_struct*) ;
 scalar_t__ TASKLET_ST_IDLE ;
 int WARN_GIANTOK ;
 int WARN_SLEEPOK ;
 int WITNESS_WARN (int,int *,char*) ;
 int pause (char*,int) ;

void
tasklet_unlock_wait(struct tasklet_struct *ts)
{

 WITNESS_WARN(WARN_GIANTOK | WARN_SLEEPOK, ((void*)0), "tasklet_kill() can sleep");


 while (TASKLET_ST_GET(ts) != TASKLET_ST_IDLE)
  pause("W", 1);
}
