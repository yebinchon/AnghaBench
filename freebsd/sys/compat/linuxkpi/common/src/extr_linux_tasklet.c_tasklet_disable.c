
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tasklet_struct {int count; } ;


 int atomic_inc (int *) ;
 int tasklet_unlock_wait (struct tasklet_struct*) ;

void
tasklet_disable(struct tasklet_struct *ts)
{

 atomic_inc(&ts->count);
 tasklet_unlock_wait(ts);
}
