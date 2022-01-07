
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int status; int func_code; } ;
union ccb {TYPE_2__ ccb_h; } ;
struct targ_softc {int state; int periph; int user_ccb_queue; int pending_ccb_queue; } ;
struct cam_periph {scalar_t__ softc; int path; } ;
typedef int cam_status ;
struct TYPE_4__ {int tqe; } ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_PERIPH ;
 int CAM_STATUS_MASK ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_2__*,int ) ;
 int TARG_STATE_LUN_ENABLED ;




 int cam_periph_lock (int ) ;
 int cam_periph_unlock (int ) ;
 int notify_user (struct targ_softc*) ;
 int panic (char*,int) ;
 TYPE_1__ periph_links ;
 int targfreeccb (struct targ_softc*,union ccb*) ;
 int wakeup (int *) ;

__attribute__((used)) static void
targdone(struct cam_periph *periph, union ccb *done_ccb)
{
 struct targ_softc *softc;
 cam_status status;

 CAM_DEBUG(periph->path, CAM_DEBUG_PERIPH, ("targdone %p\n", done_ccb));
 softc = (struct targ_softc *)periph->softc;
 TAILQ_REMOVE(&softc->pending_ccb_queue, &done_ccb->ccb_h,
       periph_links.tqe);
 status = done_ccb->ccb_h.status & CAM_STATUS_MASK;


 if ((softc->state & TARG_STATE_LUN_ENABLED) == 0) {
  targfreeccb(softc, done_ccb);
  return;
 }

 if (TAILQ_EMPTY(&softc->pending_ccb_queue))
  wakeup(&softc->pending_ccb_queue);

 switch (done_ccb->ccb_h.func_code) {

 case 128:
 case 129:
 case 131:
 case 130:
  TAILQ_INSERT_TAIL(&softc->user_ccb_queue, &done_ccb->ccb_h,
      periph_links.tqe);
   cam_periph_unlock(softc->periph);
  notify_user(softc);
   cam_periph_lock(softc->periph);
  break;
 default:
  panic("targdone: impossible xpt opcode %#x",
        done_ccb->ccb_h.func_code);

 }
}
