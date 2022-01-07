
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


struct dev_match_result {int dummy; } ;
struct TYPE_12__ {int * target; struct cam_eb* bus; } ;
struct TYPE_14__ {int position_type; scalar_t__* generations; TYPE_5__ cookie; } ;
struct ccb_dev_match {int match_buf_len; int num_matches; TYPE_7__ pos; int status; TYPE_3__* matches; int num_patterns; int patterns; } ;
struct cam_et {int refcount; } ;
struct cam_eb {scalar_t__ generation; int eb_mtx; TYPE_4__* sim; int path_id; } ;
typedef int dev_match_ret ;
struct TYPE_13__ {scalar_t__ bus_generation; } ;
struct TYPE_11__ {int sim_name; int unit_number; int bus_id; } ;
struct TYPE_8__ {int dev_name; int unit_number; int bus_id; int path_id; } ;
struct TYPE_9__ {TYPE_1__ bus_result; } ;
struct TYPE_10__ {TYPE_2__ result; int type; } ;


 size_t CAM_BUS_GENERATION ;
 int CAM_DEV_MATCH_ERROR ;
 int CAM_DEV_MATCH_LIST_CHANGED ;
 int CAM_DEV_MATCH_MORE ;
 int CAM_DEV_POS_BUS ;
 int CAM_DEV_POS_EDT ;
 int CAM_DEV_POS_TARGET ;
 size_t CAM_TARGET_GENERATION ;
 int DEV_MATCH_BUS ;
 int DM_RET_ACTION_MASK ;
 int DM_RET_COPY ;
 int DM_RET_DESCEND ;
 int DM_RET_ERROR ;
 int DM_RET_STOP ;
 int bzero (TYPE_7__*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int strlcpy (int ,int ,int) ;
 int xptbusmatch (int ,int ,struct cam_eb*) ;
 int xptedttargetfunc ;
 int xpttargettraverse (struct cam_eb*,struct cam_et*,int ,void*) ;
 TYPE_6__ xsoftc ;

__attribute__((used)) static int
xptedtbusfunc(struct cam_eb *bus, void *arg)
{
 struct ccb_dev_match *cdm;
 struct cam_et *target;
 dev_match_ret retval;

 cdm = (struct ccb_dev_match *)arg;





 if ((cdm->pos.position_type & CAM_DEV_POS_BUS)
  && (cdm->pos.cookie.bus == bus)
  && (cdm->pos.position_type & CAM_DEV_POS_TARGET)
  && (cdm->pos.cookie.target != ((void*)0)))
  retval = DM_RET_DESCEND;
 else
  retval = xptbusmatch(cdm->patterns, cdm->num_patterns, bus);




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
    CAM_DEV_POS_EDT | CAM_DEV_POS_BUS;

   cdm->pos.cookie.bus = bus;
   cdm->pos.generations[CAM_BUS_GENERATION]=
    xsoftc.bus_generation;
   cdm->status = CAM_DEV_MATCH_MORE;
   return(0);
  }
  j = cdm->num_matches;
  cdm->num_matches++;
  cdm->matches[j].type = DEV_MATCH_BUS;
  cdm->matches[j].result.bus_result.path_id = bus->path_id;
  cdm->matches[j].result.bus_result.bus_id = bus->sim->bus_id;
  cdm->matches[j].result.bus_result.unit_number =
   bus->sim->unit_number;
  strlcpy(cdm->matches[j].result.bus_result.dev_name,
   bus->sim->sim_name,
   sizeof(cdm->matches[j].result.bus_result.dev_name));
 }





 if ((retval & DM_RET_ACTION_MASK) == DM_RET_STOP)
  return(1);





 mtx_lock(&bus->eb_mtx);
 if ((cdm->pos.position_type & CAM_DEV_POS_BUS)
  && (cdm->pos.cookie.bus == bus)
  && (cdm->pos.position_type & CAM_DEV_POS_TARGET)
  && (cdm->pos.cookie.target != ((void*)0))) {
  if ((cdm->pos.generations[CAM_TARGET_GENERATION] !=
      bus->generation)) {
   mtx_unlock(&bus->eb_mtx);
   cdm->status = CAM_DEV_MATCH_LIST_CHANGED;
   return (0);
  }
  target = (struct cam_et *)cdm->pos.cookie.target;
  target->refcount++;
 } else
  target = ((void*)0);
 mtx_unlock(&bus->eb_mtx);

 return (xpttargettraverse(bus, target, xptedttargetfunc, arg));
}
