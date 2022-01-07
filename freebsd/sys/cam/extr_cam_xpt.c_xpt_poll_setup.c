
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int timeout; TYPE_2__* path; } ;
union ccb {TYPE_3__ ccb_h; } ;
typedef int uint32_t ;
typedef int u_int32_t ;
struct cam_sim {struct cam_devq* devq; } ;
struct TYPE_8__ {scalar_t__ dev_openings; } ;
struct cam_ed {TYPE_4__ ccbq; } ;
struct cam_devq {scalar_t__ send_openings; int send_mtx; } ;
struct TYPE_6__ {struct cam_ed* device; TYPE_1__* bus; } ;
struct TYPE_5__ {struct cam_sim* sim; } ;


 int DELAY (int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xpt_sim_poll (struct cam_sim*) ;

uint32_t
xpt_poll_setup(union ccb *start_ccb)
{
 u_int32_t timeout;
 struct cam_sim *sim;
 struct cam_devq *devq;
 struct cam_ed *dev;

 timeout = start_ccb->ccb_h.timeout * 10;
 sim = start_ccb->ccb_h.path->bus->sim;
 devq = sim->devq;
 dev = start_ccb->ccb_h.path->device;





 mtx_lock(&devq->send_mtx);
 dev->ccbq.dev_openings--;
 while((devq->send_openings <= 0 || dev->ccbq.dev_openings < 0) &&
     (--timeout > 0)) {
  mtx_unlock(&devq->send_mtx);
  DELAY(100);
  xpt_sim_poll(sim);
  mtx_lock(&devq->send_mtx);
 }
 dev->ccbq.dev_openings++;
 mtx_unlock(&devq->send_mtx);

 return (timeout);
}
