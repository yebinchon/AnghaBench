
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_5__ {scalar_t__ qfrozen_cnt; } ;
struct TYPE_6__ {TYPE_1__ queue; } ;
struct cam_ed {int flags; TYPE_3__* sim; int callout; TYPE_2__ ccbq; } ;
struct TYPE_8__ {int send_mtx; } ;
struct TYPE_7__ {TYPE_4__* devq; } ;


 int CAM_DEBUG_DEV (struct cam_ed*,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int CAM_DEV_REL_ON_COMPLETE ;
 int CAM_DEV_REL_TIMEOUT_PENDING ;
 int MA_OWNED ;
 int callout_stop (int *) ;
 int mtx_assert (int *,int ) ;
 int printf (char*,scalar_t__,scalar_t__) ;
 int xpt_schedule_devq (TYPE_4__*,struct cam_ed*) ;

__attribute__((used)) static int
xpt_release_devq_device(struct cam_ed *dev, u_int count, int run_queue)
{

 mtx_assert(&dev->sim->devq->send_mtx, MA_OWNED);
 CAM_DEBUG_DEV(dev, CAM_DEBUG_TRACE,
     ("xpt_release_devq_device(%d, %d) %u->%u\n", count, run_queue,
     dev->ccbq.queue.qfrozen_cnt, dev->ccbq.queue.qfrozen_cnt - count));
 if (count > dev->ccbq.queue.qfrozen_cnt) {




  count = dev->ccbq.queue.qfrozen_cnt;
 }
 dev->ccbq.queue.qfrozen_cnt -= count;
 if (dev->ccbq.queue.qfrozen_cnt == 0) {




  dev->flags &= ~CAM_DEV_REL_ON_COMPLETE;




  if ((dev->flags & CAM_DEV_REL_TIMEOUT_PENDING) != 0) {
   callout_stop(&dev->callout);
   dev->flags &= ~CAM_DEV_REL_TIMEOUT_PENDING;
  }





  xpt_schedule_devq(dev->sim->devq, dev);
 } else
  run_queue = 0;
 return (run_queue);
}
