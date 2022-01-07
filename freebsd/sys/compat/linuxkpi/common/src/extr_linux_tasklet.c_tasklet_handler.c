
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tasklet_worker {int head; } ;
struct tasklet_struct {int data; int (* func ) (int ) ;int count; } ;


 struct tasklet_struct* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct tasklet_struct*,int ) ;
 struct tasklet_struct* TAILQ_LAST (int *,int ) ;
 int TAILQ_REMOVE (int *,struct tasklet_struct*,int ) ;
 scalar_t__ TASKLET_ST_CMPSET (struct tasklet_struct*,int ,int ) ;
 int TASKLET_ST_EXEC ;
 int TASKLET_ST_IDLE ;
 int TASKLET_ST_SET (struct tasklet_struct*,int ) ;
 int TASKLET_WORKER_LOCK (struct tasklet_worker*) ;
 int TASKLET_WORKER_UNLOCK (struct tasklet_worker*) ;
 int atomic_read (int *) ;
 int curthread ;
 int entry ;
 int linux_set_current (int ) ;
 int stub1 (int ) ;
 int tasklet_list ;

__attribute__((used)) static void
tasklet_handler(void *arg)
{
 struct tasklet_worker *tw = (struct tasklet_worker *)arg;
 struct tasklet_struct *ts;
 struct tasklet_struct *last;

 linux_set_current(curthread);

 TASKLET_WORKER_LOCK(tw);
 last = TAILQ_LAST(&tw->head, tasklet_list);
 while (1) {
  ts = TAILQ_FIRST(&tw->head);
  if (ts == ((void*)0))
   break;
  TAILQ_REMOVE(&tw->head, ts, entry);

  if (!atomic_read(&ts->count)) {
   TASKLET_WORKER_UNLOCK(tw);
   do {

    TASKLET_ST_SET(ts, TASKLET_ST_EXEC);

    ts->func(ts->data);

   } while (TASKLET_ST_CMPSET(ts, TASKLET_ST_EXEC,
           TASKLET_ST_IDLE) == 0);
   TASKLET_WORKER_LOCK(tw);
  } else {
   TAILQ_INSERT_TAIL(&tw->head, ts, entry);
  }
  if (ts == last)
   break;
 }
 TASKLET_WORKER_UNLOCK(tw);
}
