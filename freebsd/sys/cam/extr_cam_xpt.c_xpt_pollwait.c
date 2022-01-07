
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int status; TYPE_2__* path; } ;
union ccb {TYPE_3__ ccb_h; } ;
typedef scalar_t__ uint32_t ;
struct TYPE_5__ {TYPE_1__* bus; } ;
struct TYPE_4__ {int sim; } ;


 int CAM_CMD_TIMEOUT ;
 int CAM_REQ_INPROG ;
 int CAM_STATUS_MASK ;
 int DELAY (int) ;
 int xpt_sim_poll (int ) ;

void
xpt_pollwait(union ccb *start_ccb, uint32_t timeout)
{

 while (--timeout > 0) {
  xpt_sim_poll(start_ccb->ccb_h.path->bus->sim);
  if ((start_ccb->ccb_h.status & CAM_STATUS_MASK)
      != CAM_REQ_INPROG)
   break;
  DELAY(100);
 }

 if (timeout == 0) {






  start_ccb->ccb_h.status = CAM_CMD_TIMEOUT;
 }
}
