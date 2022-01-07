
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {int func_code; TYPE_3__* path; } ;
union ccb {TYPE_1__ crcn; TYPE_2__ ccb_h; } ;
struct TYPE_7__ {int periph; } ;


 int CAM_DEBUG (TYPE_3__*,int ,char*) ;
 int CAM_DEBUG_INFO ;
 int CAM_DEBUG_TRACE ;




 int mmc_dev_advinfo (union ccb*) ;
 int mmc_scan_lun (int ,TYPE_3__*,int ,union ccb*) ;
 int xpt_action_default (union ccb*) ;
 int xpt_action_name (int) ;

__attribute__((used)) static void
mmc_action(union ccb *start_ccb)
{
 CAM_DEBUG(start_ccb->ccb_h.path, CAM_DEBUG_TRACE,
    ("mmc_action! func_code=%x, action %s\n", start_ccb->ccb_h.func_code,
     xpt_action_name(start_ccb->ccb_h.func_code)));
 switch (start_ccb->ccb_h.func_code) {

 case 130:

 case 128:

 case 129:
  CAM_DEBUG(start_ccb->ccb_h.path, CAM_DEBUG_INFO,
     ("XPT_SCAN_{BUS,TGT,LUN}\n"));
  mmc_scan_lun(start_ccb->ccb_h.path->periph,
        start_ccb->ccb_h.path, start_ccb->crcn.flags,
        start_ccb);
  break;

 case 131:
 {
  mmc_dev_advinfo(start_ccb);
  break;
 }

 default:
  xpt_action_default(start_ccb);
  break;
 }
}
