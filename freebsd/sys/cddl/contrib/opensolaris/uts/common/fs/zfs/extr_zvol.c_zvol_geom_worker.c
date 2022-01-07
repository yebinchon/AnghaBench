
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int zv_state; int zv_zilog; int zv_queue_mtx; int zv_queue; } ;
typedef TYPE_1__ zvol_state_t ;
struct bio {int bio_cmd; } ;






 int EOPNOTSUPP ;
 int PDROP ;
 int PRIBIO ;
 int ZVOL_OBJ ;
 struct bio* bioq_takefirst (int *) ;
 int curthread ;
 int g_io_deliver (struct bio*,int ) ;
 int kthread_exit () ;
 int msleep (int *,int *,int,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sched_prio (int ,int) ;
 int thread_lock (int ) ;
 int thread_unlock (int ) ;
 int wakeup (int*) ;
 int zil_commit (int ,int ) ;
 int zvol_strategy (struct bio*) ;

__attribute__((used)) static void
zvol_geom_worker(void *arg)
{
 zvol_state_t *zv;
 struct bio *bp;

 thread_lock(curthread);
 sched_prio(curthread, PRIBIO);
 thread_unlock(curthread);

 zv = arg;
 for (;;) {
  mtx_lock(&zv->zv_queue_mtx);
  bp = bioq_takefirst(&zv->zv_queue);
  if (bp == ((void*)0)) {
   if (zv->zv_state == 1) {
    zv->zv_state = 2;
    wakeup(&zv->zv_state);
    mtx_unlock(&zv->zv_queue_mtx);
    kthread_exit();
   }
   msleep(&zv->zv_queue, &zv->zv_queue_mtx, PRIBIO | PDROP,
       "zvol:io", 0);
   continue;
  }
  mtx_unlock(&zv->zv_queue_mtx);
  switch (bp->bio_cmd) {
  case 130:
   zil_commit(zv->zv_zilog, ZVOL_OBJ);
   g_io_deliver(bp, 0);
   break;
  case 129:
  case 128:
  case 131:
   zvol_strategy(bp);
   break;
  default:
   g_io_deliver(bp, EOPNOTSUPP);
   break;
  }
 }
}
