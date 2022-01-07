
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct scsi_inquiry_data {int dummy; } ;
struct dev_match_result {int dummy; } ;
struct TYPE_8__ {int * periph; struct cam_ed* device; TYPE_2__* target; struct cam_eb* bus; } ;
struct TYPE_14__ {int position_type; scalar_t__* generations; TYPE_1__ cookie; } ;
struct ccb_dev_match {int match_buf_len; int num_matches; TYPE_7__ pos; int status; TYPE_5__* matches; int num_patterns; int patterns; } ;
struct cam_periph {int refcount; } ;
struct cam_ed {int flags; scalar_t__ generation; TYPE_2__* target; int ident_data; int inq_data; int protocol; int lun_id; } ;
struct cam_eb {scalar_t__ generation; int eb_mtx; int path_id; } ;
struct ata_params {int dummy; } ;
typedef int dev_match_ret ;
struct TYPE_13__ {scalar_t__ bus_generation; } ;
struct TYPE_10__ {int flags; int ident_data; int inq_data; int protocol; int target_lun; int target_id; int path_id; } ;
struct TYPE_11__ {TYPE_3__ device_result; } ;
struct TYPE_12__ {TYPE_4__ result; int type; } ;
struct TYPE_9__ {scalar_t__ generation; int target_id; struct cam_eb* bus; } ;


 size_t CAM_BUS_GENERATION ;
 size_t CAM_DEV_GENERATION ;
 int CAM_DEV_MATCH_ERROR ;
 int CAM_DEV_MATCH_LIST_CHANGED ;
 int CAM_DEV_MATCH_MORE ;
 int CAM_DEV_POS_BUS ;
 int CAM_DEV_POS_DEVICE ;
 int CAM_DEV_POS_EDT ;
 int CAM_DEV_POS_PERIPH ;
 int CAM_DEV_POS_TARGET ;
 int CAM_DEV_UNCONFIGURED ;
 size_t CAM_PERIPH_GENERATION ;
 size_t CAM_TARGET_GENERATION ;
 int DEV_MATCH_DEVICE ;
 int DEV_RESULT_NOFLAG ;
 int DEV_RESULT_UNCONFIGURED ;
 int DM_RET_ACTION_MASK ;
 int DM_RET_COPY ;
 int DM_RET_DESCEND ;
 int DM_RET_ERROR ;
 int DM_RET_STOP ;
 int bcopy (int *,int *,int) ;
 int bzero (TYPE_7__*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xpt_lock_buses () ;
 int xpt_unlock_buses () ;
 int xptdevicematch (int ,int ,struct cam_ed*) ;
 int xptedtperiphfunc ;
 int xptperiphtraverse (struct cam_ed*,struct cam_periph*,int ,void*) ;
 TYPE_6__ xsoftc ;

__attribute__((used)) static int
xptedtdevicefunc(struct cam_ed *device, void *arg)
{
 struct cam_eb *bus;
 struct cam_periph *periph;
 struct ccb_dev_match *cdm;
 dev_match_ret retval;

 cdm = (struct ccb_dev_match *)arg;
 bus = device->target->bus;





 if ((cdm->pos.position_type & CAM_DEV_POS_DEVICE)
  && (cdm->pos.cookie.device == device)
  && (cdm->pos.position_type & CAM_DEV_POS_PERIPH)
  && (cdm->pos.cookie.periph != ((void*)0)))
  retval = DM_RET_DESCEND;
 else
  retval = xptdevicematch(cdm->patterns, cdm->num_patterns,
     device);

 if ((retval & DM_RET_ACTION_MASK) == DM_RET_ERROR) {
  cdm->status = CAM_DEV_MATCH_ERROR;
  return(0);
 }




 if (retval & DM_RET_COPY) {
  int spaceleft, j;

  spaceleft = cdm->match_buf_len - (cdm->num_matches *
   sizeof(struct dev_match_result));






  if (spaceleft < sizeof(struct dev_match_result)) {
   bzero(&cdm->pos, sizeof(cdm->pos));
   cdm->pos.position_type =
    CAM_DEV_POS_EDT | CAM_DEV_POS_BUS |
    CAM_DEV_POS_TARGET | CAM_DEV_POS_DEVICE;

   cdm->pos.cookie.bus = device->target->bus;
   cdm->pos.generations[CAM_BUS_GENERATION]=
    xsoftc.bus_generation;
   cdm->pos.cookie.target = device->target;
   cdm->pos.generations[CAM_TARGET_GENERATION] =
    device->target->bus->generation;
   cdm->pos.cookie.device = device;
   cdm->pos.generations[CAM_DEV_GENERATION] =
    device->target->generation;
   cdm->status = CAM_DEV_MATCH_MORE;
   return(0);
  }
  j = cdm->num_matches;
  cdm->num_matches++;
  cdm->matches[j].type = DEV_MATCH_DEVICE;
  cdm->matches[j].result.device_result.path_id =
   device->target->bus->path_id;
  cdm->matches[j].result.device_result.target_id =
   device->target->target_id;
  cdm->matches[j].result.device_result.target_lun =
   device->lun_id;
  cdm->matches[j].result.device_result.protocol =
   device->protocol;
  bcopy(&device->inq_data,
        &cdm->matches[j].result.device_result.inq_data,
        sizeof(struct scsi_inquiry_data));
  bcopy(&device->ident_data,
        &cdm->matches[j].result.device_result.ident_data,
        sizeof(struct ata_params));


  if (device->flags & CAM_DEV_UNCONFIGURED)
   cdm->matches[j].result.device_result.flags =
    DEV_RESULT_UNCONFIGURED;
  else
   cdm->matches[j].result.device_result.flags =
    DEV_RESULT_NOFLAG;
 }





 if ((retval & DM_RET_ACTION_MASK) == DM_RET_STOP)
  return(1);





 xpt_lock_buses();
 mtx_lock(&bus->eb_mtx);
 if ((cdm->pos.position_type & CAM_DEV_POS_BUS)
  && (cdm->pos.cookie.bus == bus)
  && (cdm->pos.position_type & CAM_DEV_POS_TARGET)
  && (cdm->pos.cookie.target == device->target)
  && (cdm->pos.position_type & CAM_DEV_POS_DEVICE)
  && (cdm->pos.cookie.device == device)
  && (cdm->pos.position_type & CAM_DEV_POS_PERIPH)
  && (cdm->pos.cookie.periph != ((void*)0))) {
  if (cdm->pos.generations[CAM_PERIPH_GENERATION] !=
      device->generation) {
   mtx_unlock(&bus->eb_mtx);
   xpt_unlock_buses();
   cdm->status = CAM_DEV_MATCH_LIST_CHANGED;
   return(0);
  }
  periph = (struct cam_periph *)cdm->pos.cookie.periph;
  periph->refcount++;
 } else
  periph = ((void*)0);
 mtx_unlock(&bus->eb_mtx);
 xpt_unlock_buses();

 return (xptperiphtraverse(device, periph, xptedtperiphfunc, arg));
}
