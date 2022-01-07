
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct ctio_descr {int event; scalar_t__ offset; } ;
struct TYPE_5__ {scalar_t__ status; scalar_t__ targ_descr; } ;
struct ccb_scsiio {TYPE_2__ ccb_h; } ;
struct ccb_hdr {int flags; } ;
struct TYPE_4__ {scalar_t__ targ_descr; } ;
struct ccb_accept_tio {TYPE_1__ ccb_h; } ;
struct atio_descr {scalar_t__ base_off; scalar_t__ targ_ack; scalar_t__ init_ack; int cmplt_io; } ;
struct TYPE_6__ {int tqe; } ;


 int AIO_DONE ;
 scalar_t__ CAM_REQ_ABORTED ;
 int CAM_SEND_STATUS ;
 int CTIO_DONE ;
 struct ccb_hdr* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct ccb_hdr*,int ) ;
 int free_ccb (union ccb*) ;
 TYPE_3__ periph_links ;
 int send_ccb (union ccb*,int) ;
 int tcmd_handle (struct ccb_accept_tio*,struct ccb_scsiio*,int) ;
 int warnx (char*,struct ccb_hdr*,struct atio_descr*,char*) ;

__attribute__((used)) static int
run_queue(struct ccb_accept_tio *atio)
{
 struct atio_descr *a_descr;
 struct ccb_hdr *ccb_h;
 int sent_status, event;

 if (atio == ((void*)0))
  return (0);

 a_descr = (struct atio_descr *)atio->ccb_h.targ_descr;

 while ((ccb_h = TAILQ_FIRST(&a_descr->cmplt_io)) != ((void*)0)) {
  struct ccb_scsiio *ctio;
  struct ctio_descr *c_descr;

  ctio = (struct ccb_scsiio *)ccb_h;
  c_descr = (struct ctio_descr *)ctio->ccb_h.targ_descr;

  if (ctio->ccb_h.status == CAM_REQ_ABORTED) {
   TAILQ_REMOVE(&a_descr->cmplt_io, ccb_h,
         periph_links.tqe);
   free_ccb((union ccb *)ctio);
   send_ccb((union ccb *)atio, 1);
   continue;
  }


  if ((c_descr->event == AIO_DONE &&
      c_descr->offset == a_descr->base_off + a_descr->targ_ack)
   || (c_descr->event == CTIO_DONE &&
      c_descr->offset == a_descr->base_off + a_descr->init_ack)) {
   sent_status = (ccb_h->flags & CAM_SEND_STATUS) != 0;
   event = c_descr->event;

   TAILQ_REMOVE(&a_descr->cmplt_io, ccb_h,
         periph_links.tqe);
   tcmd_handle(atio, ctio, c_descr->event);


   if (sent_status != 0 && event == CTIO_DONE)
    send_ccb((union ccb *)atio, 1);
  } else {

   if ( 1)
    warnx("IO %p:%p out of order %s", ccb_h,
        a_descr, c_descr->event == AIO_DONE?
        "aio" : "ctio");
   return (1);
  }
 }
 return (0);
}
