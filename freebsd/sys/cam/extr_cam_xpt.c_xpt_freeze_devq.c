
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int32_t ;
typedef int u_int ;
struct cam_path {struct cam_ed* device; } ;
struct cam_ed {TYPE_1__* sim; } ;
struct cam_devq {int send_mtx; } ;
struct TYPE_2__ {struct cam_devq* devq; } ;


 int CAM_DEBUG (struct cam_path*,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xpt_freeze_devq_device (struct cam_ed*,int ) ;

u_int32_t
xpt_freeze_devq(struct cam_path *path, u_int count)
{
 struct cam_ed *dev = path->device;
 struct cam_devq *devq;
 uint32_t freeze;

 devq = dev->sim->devq;
 mtx_lock(&devq->send_mtx);
 CAM_DEBUG(path, CAM_DEBUG_TRACE, ("xpt_freeze_devq(%d)\n", count));
 freeze = xpt_freeze_devq_device(dev, count);
 mtx_unlock(&devq->send_mtx);
 return (freeze);
}
