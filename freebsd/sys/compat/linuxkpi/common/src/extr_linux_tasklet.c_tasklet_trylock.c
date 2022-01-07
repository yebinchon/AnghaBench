
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tasklet_struct {int dummy; } ;


 int TASKLET_ST_BUSY ;
 int TASKLET_ST_CMPSET (struct tasklet_struct*,int ,int ) ;
 int TASKLET_ST_IDLE ;

int
tasklet_trylock(struct tasklet_struct *ts)
{

 return (TASKLET_ST_CMPSET(ts, TASKLET_ST_IDLE, TASKLET_ST_BUSY));
}
