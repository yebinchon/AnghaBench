
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cbfcnp; struct pass_io_req* ccb_ioreq; int ccb_type; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct pass_softc {int state; int incoming_queue; int device_stats; int active_queue; } ;
struct pass_io_req {int start_time; union ccb* alloced_ccb; int ccb; } ;
struct cam_periph {scalar_t__ softc; } ;


 int CAM_PRIORITY_NORMAL ;
 int PASS_CCB_QUEUED_IO ;

 int TAILQ_EMPTY (int *) ;
 struct pass_io_req* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct pass_io_req*,int ) ;
 int TAILQ_REMOVE (int *,struct pass_io_req*,int ) ;
 int binuptime (int *) ;
 int devstat_start_transaction (int ,int *) ;
 int links ;
 int passdone ;
 int xpt_action (union ccb*) ;
 int xpt_merge_ccb (union ccb*,int *) ;
 int xpt_release_ccb (union ccb*) ;
 int xpt_schedule (struct cam_periph*,int ) ;

__attribute__((used)) static void
passstart(struct cam_periph *periph, union ccb *start_ccb)
{
 struct pass_softc *softc;

 softc = (struct pass_softc *)periph->softc;

 switch (softc->state) {
 case 128: {
  struct pass_io_req *io_req;





  io_req = TAILQ_FIRST(&softc->incoming_queue);
  if (io_req == ((void*)0)) {
   xpt_release_ccb(start_ccb);
   break;
  }
  TAILQ_REMOVE(&softc->incoming_queue, io_req, links);
  TAILQ_INSERT_TAIL(&softc->active_queue, io_req, links);



  xpt_merge_ccb(start_ccb, &io_req->ccb);
  start_ccb->ccb_h.ccb_type = PASS_CCB_QUEUED_IO;
  start_ccb->ccb_h.ccb_ioreq = io_req;
  start_ccb->ccb_h.cbfcnp = passdone;
  io_req->alloced_ccb = start_ccb;
  binuptime(&io_req->start_time);
  devstat_start_transaction(softc->device_stats,
       &io_req->start_time);

  xpt_action(start_ccb);




  if (!TAILQ_EMPTY(&softc->incoming_queue))
   xpt_schedule(periph, CAM_PRIORITY_NORMAL);
  break;
 }
 default:
  break;
 }
}
