
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_int ;
struct TYPE_7__ {int index; } ;
struct TYPE_5__ {scalar_t__ qfrozen_cnt; } ;
struct TYPE_6__ {TYPE_1__ queue; } ;
struct cam_ed {TYPE_3__ devq_entry; TYPE_2__ ccbq; TYPE_4__* sim; } ;
struct cam_devq {int send_queue; int send_mtx; } ;
struct TYPE_8__ {struct cam_devq* devq; } ;


 int CAM_DEBUG_DEV (struct cam_ed*,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int MA_OWNED ;
 int camq_remove (int *,int ) ;
 scalar_t__ device_is_queued (struct cam_ed*) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static uint32_t
xpt_freeze_devq_device(struct cam_ed *dev, u_int count)
{
 struct cam_devq *devq;
 uint32_t freeze;

 devq = dev->sim->devq;
 mtx_assert(&devq->send_mtx, MA_OWNED);
 CAM_DEBUG_DEV(dev, CAM_DEBUG_TRACE,
     ("xpt_freeze_devq_device(%d) %u->%u\n", count,
     dev->ccbq.queue.qfrozen_cnt, dev->ccbq.queue.qfrozen_cnt + count));
 freeze = (dev->ccbq.queue.qfrozen_cnt += count);

 if (device_is_queued(dev))
  camq_remove(&devq->send_queue, dev->devq_entry.index);
 return (freeze);
}
