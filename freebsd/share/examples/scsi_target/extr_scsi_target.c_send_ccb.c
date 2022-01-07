
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int priority; } ;
struct TYPE_6__ {int status; TYPE_1__ pinfo; int func_code; } ;
union ccb {TYPE_3__ ccb_h; } ;
typedef int ccb ;
struct TYPE_5__ {int tqe; } ;


 int CAM_PROVIDE_FAIL ;
 int TAILQ_INSERT_TAIL (int *,TYPE_3__*,int ) ;
 scalar_t__ XPT_FC_IS_QUEUED (union ccb*) ;
 scalar_t__ debug ;
 int pending_queue ;
 TYPE_2__ periph_links ;
 int targ_fd ;
 int warn (char*) ;
 int warnx (char*,int ) ;
 int write (int ,union ccb**,int) ;

void
send_ccb(union ccb *ccb, int priority)
{
 if (debug)
  warnx("sending ccb (%#x)", ccb->ccb_h.func_code);
 ccb->ccb_h.pinfo.priority = priority;
 if (XPT_FC_IS_QUEUED(ccb)) {
  TAILQ_INSERT_TAIL(&pending_queue, &ccb->ccb_h,
      periph_links.tqe);
 }
 if (write(targ_fd, &ccb, sizeof(ccb)) != sizeof(ccb)) {
  warn("write ccb");
  ccb->ccb_h.status = CAM_PROVIDE_FAIL;
 }
}
