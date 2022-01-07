
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int targ_port; int initid; } ;
struct TYPE_4__ {TYPE_1__ nexus; } ;
union ctl_io {TYPE_2__ io_hdr; } ;
typedef size_t u_int ;
struct ctl_thread {int queue_lock; int incoming_queue; } ;
struct ctl_softc {struct ctl_thread* threads; } ;


 struct ctl_softc* CTL_SOFTC (union ctl_io*) ;
 int STAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 int links ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct ctl_thread*) ;
 int worker_threads ;

__attribute__((used)) static void
ctl_enqueue_incoming(union ctl_io *io)
{
 struct ctl_softc *softc = CTL_SOFTC(io);
 struct ctl_thread *thr;
 u_int idx;

 idx = (io->io_hdr.nexus.targ_port * 127 +
        io->io_hdr.nexus.initid) % worker_threads;
 thr = &softc->threads[idx];
 mtx_lock(&thr->queue_lock);
 STAILQ_INSERT_TAIL(&thr->incoming_queue, &io->io_hdr, links);
 mtx_unlock(&thr->queue_lock);
 wakeup(thr);
}
