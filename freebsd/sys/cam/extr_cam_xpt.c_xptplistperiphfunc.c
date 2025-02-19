
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct periph_driver {int generation; int driver_name; } ;
struct dev_match_result {int dummy; } ;
struct TYPE_10__ {struct cam_periph* periph; struct periph_driver** pdrv; } ;
struct TYPE_18__ {int position_type; int * generations; TYPE_1__ cookie; } ;
struct ccb_dev_match {int match_buf_len; int num_matches; TYPE_8__* matches; void* status; TYPE_9__ pos; int num_patterns; int patterns; } ;
struct cam_periph {int periph_name; int unit_number; TYPE_5__* path; } ;
typedef int dev_match_ret ;
struct TYPE_15__ {int periph_name; int unit_number; int target_lun; int target_id; int path_id; } ;
struct TYPE_16__ {TYPE_6__ periph_result; } ;
struct TYPE_17__ {TYPE_7__ result; int type; } ;
struct TYPE_14__ {TYPE_4__* device; TYPE_3__* target; TYPE_2__* bus; } ;
struct TYPE_13__ {int lun_id; } ;
struct TYPE_12__ {int target_id; } ;
struct TYPE_11__ {int path_id; } ;


 void* CAM_DEV_MATCH_ERROR ;
 void* CAM_DEV_MATCH_MORE ;
 int CAM_DEV_POS_PDPTR ;
 int CAM_DEV_POS_PDRV ;
 int CAM_DEV_POS_PERIPH ;
 int CAM_LUN_WILDCARD ;
 size_t CAM_PERIPH_GENERATION ;
 int CAM_TARGET_WILDCARD ;
 int DEV_MATCH_PERIPH ;
 int DM_RET_ACTION_MASK ;
 int DM_RET_COPY ;
 int DM_RET_ERROR ;
 int bzero (TYPE_9__*,int) ;
 struct periph_driver** periph_drivers ;
 scalar_t__ strcmp (int ,int ) ;
 int strlcpy (int ,int ,size_t) ;
 int xptperiphmatch (int ,int ,struct cam_periph*) ;

__attribute__((used)) static int
xptplistperiphfunc(struct cam_periph *periph, void *arg)
{
 struct ccb_dev_match *cdm;
 dev_match_ret retval;

 cdm = (struct ccb_dev_match *)arg;

 retval = xptperiphmatch(cdm->patterns, cdm->num_patterns, periph);

 if ((retval & DM_RET_ACTION_MASK) == DM_RET_ERROR) {
  cdm->status = CAM_DEV_MATCH_ERROR;
  return(0);
 }




 if (retval & DM_RET_COPY) {
  int spaceleft, j;
  size_t l;

  spaceleft = cdm->match_buf_len - (cdm->num_matches *
   sizeof(struct dev_match_result));






  if (spaceleft < sizeof(struct dev_match_result)) {
   struct periph_driver **pdrv;

   pdrv = ((void*)0);
   bzero(&cdm->pos, sizeof(cdm->pos));
   cdm->pos.position_type =
    CAM_DEV_POS_PDRV | CAM_DEV_POS_PDPTR |
    CAM_DEV_POS_PERIPH;
   for (pdrv = periph_drivers; *pdrv != ((void*)0); pdrv++) {
    if (strcmp((*pdrv)->driver_name,
        periph->periph_name) == 0)
     break;
   }

   if (*pdrv == ((void*)0)) {
    cdm->status = CAM_DEV_MATCH_ERROR;
    return(0);
   }

   cdm->pos.cookie.pdrv = pdrv;





   cdm->pos.cookie.periph = periph;
   cdm->pos.generations[CAM_PERIPH_GENERATION] =
    (*pdrv)->generation;
   cdm->status = CAM_DEV_MATCH_MORE;
   return(0);
  }

  j = cdm->num_matches;
  cdm->num_matches++;
  cdm->matches[j].type = DEV_MATCH_PERIPH;
  cdm->matches[j].result.periph_result.path_id =
   periph->path->bus->path_id;





  if (periph->path->target)
   cdm->matches[j].result.periph_result.target_id =
    periph->path->target->target_id;
  else
   cdm->matches[j].result.periph_result.target_id =
    CAM_TARGET_WILDCARD;

  if (periph->path->device)
   cdm->matches[j].result.periph_result.target_lun =
    periph->path->device->lun_id;
  else
   cdm->matches[j].result.periph_result.target_lun =
    CAM_LUN_WILDCARD;

  cdm->matches[j].result.periph_result.unit_number =
   periph->unit_number;
  l = sizeof(cdm->matches[j].result.periph_result.periph_name);
  strlcpy(cdm->matches[j].result.periph_result.periph_name,
   periph->periph_name, l);
 }

 return(1);
}
