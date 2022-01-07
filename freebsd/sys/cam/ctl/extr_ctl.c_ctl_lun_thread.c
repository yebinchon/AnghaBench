
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_softc {int * lun_thread; int ctl_lock; int pending_lun_queue; int shutdown; } ;
struct ctl_be_lun {int dummy; } ;


 int CTL_DEBUG_PRINT (char*) ;
 int PDROP ;
 scalar_t__ PUSER ;
 struct ctl_be_lun* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int ctl_create_lun (struct ctl_be_lun*) ;
 int curthread ;
 int kthread_exit () ;
 int links ;
 int mtx_lock (int *) ;
 int mtx_sleep (int *,int *,int ,char*,int ) ;
 int mtx_unlock (int *) ;
 int sched_prio (int ,scalar_t__) ;
 int thread_lock (int ) ;
 int thread_unlock (int ) ;

__attribute__((used)) static void
ctl_lun_thread(void *arg)
{
 struct ctl_softc *softc = (struct ctl_softc *)arg;
 struct ctl_be_lun *be_lun;

 CTL_DEBUG_PRINT(("ctl_lun_thread starting\n"));
 thread_lock(curthread);
 sched_prio(curthread, PUSER - 1);
 thread_unlock(curthread);

 while (!softc->shutdown) {
  mtx_lock(&softc->ctl_lock);
  be_lun = STAILQ_FIRST(&softc->pending_lun_queue);
  if (be_lun != ((void*)0)) {
   STAILQ_REMOVE_HEAD(&softc->pending_lun_queue, links);
   mtx_unlock(&softc->ctl_lock);
   ctl_create_lun(be_lun);
   continue;
  }


  mtx_sleep(&softc->pending_lun_queue, &softc->ctl_lock,
      PDROP, "-", 0);
 }
 softc->lun_thread = ((void*)0);
 kthread_exit();
}
