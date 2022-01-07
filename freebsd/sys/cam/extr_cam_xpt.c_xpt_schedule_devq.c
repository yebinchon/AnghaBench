
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ entries; scalar_t__ qfrozen_cnt; } ;
struct TYPE_3__ {scalar_t__ dev_openings; TYPE_2__ queue; } ;
struct cam_ed {TYPE_1__ ccbq; int devq_entry; } ;
struct cam_devq {int send_queue; int send_mtx; } ;


 int CAMQ_GET_PRIO (TYPE_2__*) ;
 int MA_OWNED ;
 int mtx_assert (int *,int ) ;
 int xpt_schedule_dev (int *,int *,int ) ;

__attribute__((used)) static __inline int
xpt_schedule_devq(struct cam_devq *devq, struct cam_ed *dev)
{
 int retval;

 mtx_assert(&devq->send_mtx, MA_OWNED);
 if ((dev->ccbq.queue.entries > 0) &&
     (dev->ccbq.dev_openings > 0) &&
     (dev->ccbq.queue.qfrozen_cnt == 0)) {





  retval =
      xpt_schedule_dev(&devq->send_queue,
         &dev->devq_entry,
         CAMQ_GET_PRIO(&dev->ccbq.queue));
 } else {
  retval = 0;
 }
 return (retval);
}
