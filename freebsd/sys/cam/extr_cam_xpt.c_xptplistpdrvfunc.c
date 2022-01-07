
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct periph_driver {scalar_t__ generation; } ;
struct TYPE_3__ {int * periph; struct periph_driver** pdrv; } ;
struct TYPE_4__ {int position_type; scalar_t__* generations; TYPE_1__ cookie; } ;
struct ccb_dev_match {TYPE_2__ pos; int status; } ;
struct cam_periph {int refcount; } ;


 int CAM_DEV_MATCH_LIST_CHANGED ;
 int CAM_DEV_POS_PDPTR ;
 int CAM_DEV_POS_PERIPH ;
 size_t CAM_PERIPH_GENERATION ;
 int xpt_lock_buses () ;
 int xpt_unlock_buses () ;
 int xptpdperiphtraverse (struct periph_driver**,struct cam_periph*,int ,void*) ;
 int xptplistperiphfunc ;

__attribute__((used)) static int
xptplistpdrvfunc(struct periph_driver **pdrv, void *arg)
{
 struct cam_periph *periph;
 struct ccb_dev_match *cdm;

 cdm = (struct ccb_dev_match *)arg;

 xpt_lock_buses();
 if ((cdm->pos.position_type & CAM_DEV_POS_PDPTR)
  && (cdm->pos.cookie.pdrv == pdrv)
  && (cdm->pos.position_type & CAM_DEV_POS_PERIPH)
  && (cdm->pos.cookie.periph != ((void*)0))) {
  if (cdm->pos.generations[CAM_PERIPH_GENERATION] !=
      (*pdrv)->generation) {
   xpt_unlock_buses();
   cdm->status = CAM_DEV_MATCH_LIST_CHANGED;
   return(0);
  }
  periph = (struct cam_periph *)cdm->pos.cookie.periph;
  periph->refcount++;
 } else
  periph = ((void*)0);
 xpt_unlock_buses();

 return (xptpdperiphtraverse(pdrv, periph, xptplistperiphfunc, arg));
}
