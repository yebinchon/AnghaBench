
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct cam_path {struct cam_ed* device; } ;
struct cam_ed {TYPE_1__* sim; } ;
struct cam_devq {int send_mtx; } ;
struct TYPE_2__ {struct cam_devq* devq; } ;


 int CAM_DEBUG (struct cam_path*,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ xpt_release_devq_device (struct cam_ed*,int ,int) ;
 int xpt_run_devq (struct cam_devq*) ;

void
xpt_release_devq(struct cam_path *path, u_int count, int run_queue)
{
 struct cam_ed *dev;
 struct cam_devq *devq;

 CAM_DEBUG(path, CAM_DEBUG_TRACE, ("xpt_release_devq(%d, %d)\n",
     count, run_queue));
 dev = path->device;
 devq = dev->sim->devq;
 mtx_lock(&devq->send_mtx);
 if (xpt_release_devq_device(dev, count, run_queue))
  xpt_run_devq(dev->sim->devq);
 mtx_unlock(&devq->send_mtx);
}
