
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tasklet_struct {int dummy; } ;


 int TASKLET_ST_IDLE ;
 int TASKLET_ST_SET (struct tasklet_struct*,int ) ;

void
tasklet_unlock(struct tasklet_struct *ts)
{

 TASKLET_ST_SET(ts, TASKLET_ST_IDLE);
}
