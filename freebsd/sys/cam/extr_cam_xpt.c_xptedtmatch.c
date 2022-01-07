
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * bus; } ;
struct TYPE_5__ {int position_type; scalar_t__* generations; TYPE_1__ cookie; } ;
struct ccb_dev_match {int status; TYPE_2__ pos; scalar_t__ num_matches; } ;
struct cam_eb {int refcount; } ;
struct TYPE_6__ {scalar_t__ bus_generation; } ;


 size_t CAM_BUS_GENERATION ;
 int CAM_DEV_MATCH_LAST ;
 int CAM_DEV_MATCH_LIST_CHANGED ;
 int CAM_DEV_POS_BUS ;
 int xpt_lock_buses () ;
 int xpt_unlock_buses () ;
 int xptbustraverse (struct cam_eb*,int ,struct ccb_dev_match*) ;
 int xptedtbusfunc ;
 TYPE_3__ xsoftc ;

__attribute__((used)) static int
xptedtmatch(struct ccb_dev_match *cdm)
{
 struct cam_eb *bus;
 int ret;

 cdm->num_matches = 0;





 xpt_lock_buses();
 if ((cdm->pos.position_type & CAM_DEV_POS_BUS)
  && (cdm->pos.cookie.bus != ((void*)0))) {
  if (cdm->pos.generations[CAM_BUS_GENERATION] !=
      xsoftc.bus_generation) {
   xpt_unlock_buses();
   cdm->status = CAM_DEV_MATCH_LIST_CHANGED;
   return(0);
  }
  bus = (struct cam_eb *)cdm->pos.cookie.bus;
  bus->refcount++;
 } else
  bus = ((void*)0);
 xpt_unlock_buses();

 ret = xptbustraverse(bus, xptedtbusfunc, cdm);







 if (ret == 1)
  cdm->status = CAM_DEV_MATCH_LAST;

 return(ret);
}
