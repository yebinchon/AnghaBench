
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct TYPE_4__ {int status; } ;
struct ccb_immediate_notify {int arg; TYPE_2__ ccb_h; } ;
typedef int cam_status ;
struct TYPE_3__ {int tqe; } ;






 int CAM_STATUS_MASK ;
 int CAM_TARGET_WILDCARD ;
 int TAILQ_REMOVE (int *,TYPE_2__*,int ) ;
 int UA_BDR ;
 int UA_BUS_RESET ;
 int abort_all_pending () ;
 scalar_t__ debug ;
 TYPE_1__ periph_links ;
 int send_ccb (union ccb*,int) ;
 int tcmd_ua (int ,int ) ;
 int warnx (char*,...) ;
 int work_queue ;

__attribute__((used)) static int
work_inot(struct ccb_immediate_notify *inot)
{
 cam_status status;

 if (debug)
  warnx("Working on INOT %p", inot);

 status = inot->ccb_h.status;
 status &= CAM_STATUS_MASK;

 switch (status) {
 case 137:
  tcmd_ua(CAM_TARGET_WILDCARD, UA_BUS_RESET);
  abort_all_pending();
  break;
 case 140:
  tcmd_ua(CAM_TARGET_WILDCARD, UA_BDR);
  abort_all_pending();
  break;
 case 139:
  switch (inot->arg) {
  case 128:
  case 133:
  case 135:
  case 132:
  case 131:
  case 130:
  case 129:
  case 136:
  case 134:
  default:
   warnx("INOT message %#x", inot->arg);
   break;
  }
  break;
 case 138:
  warnx("INOT %p aborted", inot);
  break;
 default:
  warnx("Unhandled INOT status %#x", status);
  break;
 }


 TAILQ_REMOVE(&work_queue, &inot->ccb_h, periph_links.tqe);
 send_ccb((union ccb *)inot, 1);

 return (1);
}
