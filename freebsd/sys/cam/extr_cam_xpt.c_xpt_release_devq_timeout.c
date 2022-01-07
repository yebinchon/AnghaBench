
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cam_ed {TYPE_1__* sim; } ;
struct cam_devq {int send_mtx; } ;
struct TYPE_2__ {struct cam_devq* devq; } ;


 int CAM_DEBUG_DEV (struct cam_ed*,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int MA_OWNED ;
 int TRUE ;
 int mtx_assert (int *,int ) ;
 scalar_t__ xpt_release_devq_device (struct cam_ed*,int,int ) ;
 int xpt_run_devq (struct cam_devq*) ;

__attribute__((used)) static void
xpt_release_devq_timeout(void *arg)
{
 struct cam_ed *dev;
 struct cam_devq *devq;

 dev = (struct cam_ed *)arg;
 CAM_DEBUG_DEV(dev, CAM_DEBUG_TRACE, ("xpt_release_devq_timeout\n"));
 devq = dev->sim->devq;
 mtx_assert(&devq->send_mtx, MA_OWNED);
 if (xpt_release_devq_device(dev, 1, TRUE))
  xpt_run_devq(devq);
}
