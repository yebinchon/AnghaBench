
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct cam_path {struct cam_ed* device; } ;
struct cam_ed {int flags; int inq_flags; int tag_saved_openings; TYPE_2__* sim; int ccbq; } ;
struct TYPE_4__ {TYPE_1__* devq; } ;
struct TYPE_3__ {int send_mtx; } ;


 int CAM_DEV_TAG_AFTER_COUNT ;
 int SID_CmdQue ;
 int cam_ccbq_resize (int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

u_int32_t
xpt_dev_ccbq_resize(struct cam_path *path, int newopenings)
{
 int result;
 struct cam_ed *dev;

 dev = path->device;
 mtx_lock(&dev->sim->devq->send_mtx);
 result = cam_ccbq_resize(&dev->ccbq, newopenings);
 mtx_unlock(&dev->sim->devq->send_mtx);
 if ((dev->flags & CAM_DEV_TAG_AFTER_COUNT) != 0
  || (dev->inq_flags & SID_CmdQue) != 0)
  dev->tag_saved_openings = newopenings;
 return (result);
}
