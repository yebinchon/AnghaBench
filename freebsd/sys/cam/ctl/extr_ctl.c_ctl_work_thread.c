
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ io_type; } ;
union ctl_io {int scsiio; TYPE_1__ io_hdr; } ;
struct ctl_thread {int * thread; int queue_lock; int rtr_queue; int incoming_queue; int done_queue; int isc_queue; struct ctl_softc* ctl_softc; } ;
struct ctl_softc {int shutdown; } ;


 int CTL_DEBUG_PRINT (char*) ;
 scalar_t__ CTL_IO_TASK ;
 int CTL_RETVAL_COMPLETE ;
 int PDROP ;
 scalar_t__ PUSER ;
 scalar_t__ STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int ctl_handle_isc (union ctl_io*) ;
 int ctl_process_done (union ctl_io*) ;
 int ctl_run_task (union ctl_io*) ;
 int ctl_scsiio (int *) ;
 int ctl_scsiio_precheck (struct ctl_softc*,int *) ;
 int curthread ;
 int kthread_exit () ;
 int links ;
 int mtx_lock (int *) ;
 int mtx_sleep (struct ctl_thread*,int *,int ,char*,int ) ;
 int mtx_unlock (int *) ;
 int sched_prio (int ,scalar_t__) ;
 int thread_lock (int ) ;
 int thread_unlock (int ) ;

__attribute__((used)) static void
ctl_work_thread(void *arg)
{
 struct ctl_thread *thr = (struct ctl_thread *)arg;
 struct ctl_softc *softc = thr->ctl_softc;
 union ctl_io *io;
 int retval;

 CTL_DEBUG_PRINT(("ctl_work_thread starting\n"));
 thread_lock(curthread);
 sched_prio(curthread, PUSER - 1);
 thread_unlock(curthread);

 while (!softc->shutdown) {
  mtx_lock(&thr->queue_lock);
  io = (union ctl_io *)STAILQ_FIRST(&thr->isc_queue);
  if (io != ((void*)0)) {
   STAILQ_REMOVE_HEAD(&thr->isc_queue, links);
   mtx_unlock(&thr->queue_lock);
   ctl_handle_isc(io);
   continue;
  }
  io = (union ctl_io *)STAILQ_FIRST(&thr->done_queue);
  if (io != ((void*)0)) {
   STAILQ_REMOVE_HEAD(&thr->done_queue, links);

   mtx_unlock(&thr->queue_lock);
   ctl_process_done(io);
   continue;
  }
  io = (union ctl_io *)STAILQ_FIRST(&thr->incoming_queue);
  if (io != ((void*)0)) {
   STAILQ_REMOVE_HEAD(&thr->incoming_queue, links);
   mtx_unlock(&thr->queue_lock);
   if (io->io_hdr.io_type == CTL_IO_TASK)
    ctl_run_task(io);
   else
    ctl_scsiio_precheck(softc, &io->scsiio);
   continue;
  }
  io = (union ctl_io *)STAILQ_FIRST(&thr->rtr_queue);
  if (io != ((void*)0)) {
   STAILQ_REMOVE_HEAD(&thr->rtr_queue, links);
   mtx_unlock(&thr->queue_lock);
   retval = ctl_scsiio(&io->scsiio);
   if (retval != CTL_RETVAL_COMPLETE)
    CTL_DEBUG_PRINT(("ctl_scsiio failed\n"));
   continue;
  }


  mtx_sleep(thr, &thr->queue_lock, PDROP, "-", 0);
 }
 thr->thread = ((void*)0);
 kthread_exit();
}
