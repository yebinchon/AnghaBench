
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cam_sim {int flags; struct cam_devq* devq; int callout; } ;
struct TYPE_2__ {scalar_t__ qfrozen_cnt; } ;
struct cam_devq {int send_mtx; TYPE_1__ send_queue; } ;


 int CAM_SIM_REL_TIMEOUT_PENDING ;
 int callout_stop (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,scalar_t__) ;
 int xpt_run_devq (struct cam_devq*) ;

void
xpt_release_simq(struct cam_sim *sim, int run_queue)
{
 struct cam_devq *devq;

 devq = sim->devq;
 mtx_lock(&devq->send_mtx);
 if (devq->send_queue.qfrozen_cnt <= 0) {




 } else
  devq->send_queue.qfrozen_cnt--;
 if (devq->send_queue.qfrozen_cnt == 0) {





  if ((sim->flags & CAM_SIM_REL_TIMEOUT_PENDING) != 0){
   callout_stop(&sim->callout);
   sim->flags &= ~CAM_SIM_REL_TIMEOUT_PENDING;
  }
  if (run_queue) {



   xpt_run_devq(sim->devq);
  }
 }
 mtx_unlock(&devq->send_mtx);
}
