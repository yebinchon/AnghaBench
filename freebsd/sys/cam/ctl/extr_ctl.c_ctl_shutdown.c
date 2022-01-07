
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_thread {int queue_lock; int * thread; } ;
struct ctl_softc {scalar_t__ is_single; int shutdown; int sysctl_ctx; struct ctl_softc* ctl_ports; struct ctl_softc* ctl_port_mask; struct ctl_softc* ctl_lun_mask; struct ctl_softc* ctl_luns; int ctl_lock; int io_zone; struct ctl_thread* thresh_thread; int * lun_thread; struct ctl_thread pending_lun_queue; struct ctl_thread* threads; int dev; } ;


 int M_DEVBUF ;
 struct ctl_softc* control_softc ;
 int ctl_frontend_deregister (int *) ;
 int ctl_tpc_shutdown (struct ctl_softc*) ;
 int destroy_dev (int ) ;
 int free (struct ctl_softc*,int ) ;
 int ha_frontend ;
 int mtx_destroy (int *) ;
 int pause (char*,int) ;
 int sysctl_ctx_free (int *) ;
 int uma_zdestroy (int ) ;
 int wakeup (struct ctl_thread*) ;
 int worker_threads ;

__attribute__((used)) static int
ctl_shutdown(void)
{
 struct ctl_softc *softc = control_softc;
 int i;

 if (softc->is_single == 0)
  ctl_frontend_deregister(&ha_frontend);

 destroy_dev(softc->dev);


 softc->shutdown = 1;
 for (i = 0; i < worker_threads; i++) {
  struct ctl_thread *thr = &softc->threads[i];
  while (thr->thread != ((void*)0)) {
   wakeup(thr);
   if (thr->thread != ((void*)0))
    pause("CTL thr shutdown", 1);
  }
  mtx_destroy(&thr->queue_lock);
 }
 while (softc->lun_thread != ((void*)0)) {
  wakeup(&softc->pending_lun_queue);
  if (softc->lun_thread != ((void*)0))
   pause("CTL thr shutdown", 1);
 }
 while (softc->thresh_thread != ((void*)0)) {
  wakeup(softc->thresh_thread);
  if (softc->thresh_thread != ((void*)0))
   pause("CTL thr shutdown", 1);
 }

 ctl_tpc_shutdown(softc);
 uma_zdestroy(softc->io_zone);
 mtx_destroy(&softc->ctl_lock);

 free(softc->ctl_luns, M_DEVBUF);
 free(softc->ctl_lun_mask, M_DEVBUF);
 free(softc->ctl_port_mask, M_DEVBUF);
 free(softc->ctl_ports, M_DEVBUF);

 sysctl_ctx_free(&softc->sysctl_ctx);

 free(softc, M_DEVBUF);
 control_softc = ((void*)0);
 return (0);
}
