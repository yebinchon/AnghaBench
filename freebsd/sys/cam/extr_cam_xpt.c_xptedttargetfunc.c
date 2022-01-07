
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * device; struct cam_et* target; struct cam_eb* bus; } ;
struct TYPE_4__ {int position_type; scalar_t__* generations; TYPE_1__ cookie; } ;
struct ccb_dev_match {TYPE_2__ pos; int status; } ;
struct cam_et {scalar_t__ generation; struct cam_eb* bus; } ;
struct cam_ed {int refcount; } ;
struct cam_eb {int eb_mtx; } ;


 size_t CAM_DEV_GENERATION ;
 int CAM_DEV_MATCH_LIST_CHANGED ;
 int CAM_DEV_POS_BUS ;
 int CAM_DEV_POS_DEVICE ;
 int CAM_DEV_POS_TARGET ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xptdevicetraverse (struct cam_et*,struct cam_ed*,int ,void*) ;
 int xptedtdevicefunc ;

__attribute__((used)) static int
xptedttargetfunc(struct cam_et *target, void *arg)
{
 struct ccb_dev_match *cdm;
 struct cam_eb *bus;
 struct cam_ed *device;

 cdm = (struct ccb_dev_match *)arg;
 bus = target->bus;





 mtx_lock(&bus->eb_mtx);
 if ((cdm->pos.position_type & CAM_DEV_POS_BUS)
  && (cdm->pos.cookie.bus == bus)
  && (cdm->pos.position_type & CAM_DEV_POS_TARGET)
  && (cdm->pos.cookie.target == target)
  && (cdm->pos.position_type & CAM_DEV_POS_DEVICE)
  && (cdm->pos.cookie.device != ((void*)0))) {
  if (cdm->pos.generations[CAM_DEV_GENERATION] !=
      target->generation) {
   mtx_unlock(&bus->eb_mtx);
   cdm->status = CAM_DEV_MATCH_LIST_CHANGED;
   return(0);
  }
  device = (struct cam_ed *)cdm->pos.cookie.device;
  device->refcount++;
 } else
  device = ((void*)0);
 mtx_unlock(&bus->eb_mtx);

 return (xptdevicetraverse(target, device, xptedtdevicefunc, arg));
}
