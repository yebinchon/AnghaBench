
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int periph_data; } ;
struct TYPE_4__ {int func_code; TYPE_1__ qos; int status; int path; } ;
union ccb {TYPE_2__ ccb_h; } ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int XPT_FC_QUEUED ;
 int cam_iosched_delta_t (int ) ;
 int xpt_done_process (TYPE_2__*) ;

void
xpt_done_direct(union ccb *done_ccb)
{

 CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_TRACE,
     ("xpt_done_direct: status %#x\n", done_ccb->ccb_h.status));
 if ((done_ccb->ccb_h.func_code & XPT_FC_QUEUED) == 0)
  return;


 done_ccb->ccb_h.qos.periph_data = cam_iosched_delta_t(done_ccb->ccb_h.qos.periph_data);
 xpt_done_process(&done_ccb->ccb_h);
}
