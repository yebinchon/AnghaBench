
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct targ_softc {int abort_queue; int work_queue; int path; } ;
struct targ_cmd_descr {int priority; TYPE_2__* user_ccb; } ;
struct cam_periph {int path; scalar_t__ softc; } ;
struct TYPE_3__ {int status; } ;
struct TYPE_4__ {TYPE_1__ ccb_h; } ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_PERIPH ;
 int CAM_REQ_CMP_ERR ;
 struct targ_cmd_descr* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct targ_cmd_descr*,int ) ;
 int TAILQ_REMOVE (int *,struct targ_cmd_descr*,int ) ;
 int notify_user (struct targ_softc*) ;
 int suword (int *,int ) ;
 int targsendccb (struct targ_softc*,union ccb*,struct targ_cmd_descr*) ;
 int targusermerge (struct targ_softc*,struct targ_cmd_descr*,union ccb*) ;
 int tqe ;
 int xpt_print (int ,char*,int) ;
 int xpt_release_ccb (union ccb*) ;
 int xpt_schedule (struct cam_periph*,int ) ;

__attribute__((used)) static void
targstart(struct cam_periph *periph, union ccb *start_ccb)
{
 struct targ_softc *softc;
 struct targ_cmd_descr *descr, *next_descr;
 int error;

 softc = (struct targ_softc *)periph->softc;
 CAM_DEBUG(softc->path, CAM_DEBUG_PERIPH, ("targstart %p\n", start_ccb));

 descr = TAILQ_FIRST(&softc->work_queue);
 if (descr == ((void*)0)) {
  xpt_release_ccb(start_ccb);
 } else {
  TAILQ_REMOVE(&softc->work_queue, descr, tqe);
  next_descr = TAILQ_FIRST(&softc->work_queue);


  error = targusermerge(softc, descr, start_ccb);
  if (error == 0)
   error = targsendccb(softc, start_ccb, descr);
  if (error != 0) {
   xpt_print(periph->path,
       "targsendccb failed, err %d\n", error);
   xpt_release_ccb(start_ccb);
   suword(&descr->user_ccb->ccb_h.status,
          CAM_REQ_CMP_ERR);
   TAILQ_INSERT_TAIL(&softc->abort_queue, descr, tqe);
   notify_user(softc);
  }


  if (next_descr != ((void*)0))
   xpt_schedule(periph, next_descr->priority);
 }
}
