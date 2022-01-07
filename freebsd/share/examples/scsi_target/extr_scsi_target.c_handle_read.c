
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int func_code; } ;
struct TYPE_10__ {scalar_t__ targ_descr; } ;
struct ccb_scsiio {TYPE_3__ ccb_h; } ;
struct TYPE_9__ {int cdb_ptr; int cdb_bytes; } ;
struct TYPE_8__ {int flags; scalar_t__ targ_descr; } ;
struct ccb_accept_tio {TYPE_2__ cdb_io; TYPE_1__ ccb_h; } ;
union ccb {TYPE_5__ ccb_h; struct ccb_scsiio ctio; struct ccb_accept_tio atio; } ;
struct ctio_descr {int atio; int event; } ;
struct atio_descr {int flags; int cdb; int cmplt_io; } ;
typedef int ccb_array ;
struct TYPE_11__ {int tqe; } ;


 int CAM_CDB_POINTER ;
 int CAM_DIS_DISCONNECT ;
 int CAM_TAG_ACTION_VALID ;
 int CTIO_DONE ;
 int MAX_INITIATORS ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_HEAD (int *,TYPE_5__*,int ) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_5__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_5__*,int ) ;



 int bzero (struct atio_descr*,int) ;
 int pending_queue ;
 TYPE_4__ periph_links ;
 int queue_io (struct ccb_scsiio*) ;
 int read (int ,union ccb**,int) ;
 int run_queue (int ) ;
 int targ_fd ;
 int warn (char*) ;
 int warnx (char*,...) ;
 int work_queue ;

__attribute__((used)) static void
handle_read()
{
 union ccb *ccb_array[MAX_INITIATORS], *ccb;
 int ccb_count, i, oo;

 ccb_count = read(targ_fd, ccb_array, sizeof(ccb_array));
 if (ccb_count <= 0) {
  warn("read ccb ptrs");
  return;
 }
 ccb_count /= sizeof(union ccb *);
 if (ccb_count < 1) {
  warnx("truncated read ccb ptr?");
  return;
 }

 for (i = 0; i < ccb_count; i++) {
  ccb = ccb_array[i];
  TAILQ_REMOVE(&pending_queue, &ccb->ccb_h, periph_links.tqe);

  switch (ccb->ccb_h.func_code) {
  case 130:
  {
   struct ccb_accept_tio *atio;
   struct atio_descr *a_descr;


   atio = &ccb->atio;
   a_descr = (struct atio_descr *)atio->ccb_h.targ_descr;
   bzero(a_descr, sizeof(*a_descr));
   TAILQ_INIT(&a_descr->cmplt_io);
   a_descr->flags = atio->ccb_h.flags &
    (CAM_DIS_DISCONNECT | CAM_TAG_ACTION_VALID);

   if ((atio->ccb_h.flags & CAM_CDB_POINTER) == 0)
    a_descr->cdb = atio->cdb_io.cdb_bytes;
   else
    a_descr->cdb = atio->cdb_io.cdb_ptr;


   TAILQ_INSERT_TAIL(&work_queue, &ccb->ccb_h,
       periph_links.tqe);
   break;
  }
  case 129:
  {
   struct ccb_scsiio *ctio;
   struct ctio_descr *c_descr;

   ctio = &ccb->ctio;
   c_descr = (struct ctio_descr *)ctio->ccb_h.targ_descr;
   c_descr->event = CTIO_DONE;

   queue_io(ctio);

   oo += run_queue(c_descr->atio);
   break;
  }
  case 128:

   TAILQ_INSERT_HEAD(&work_queue, &ccb->ccb_h,
       periph_links.tqe);
   break;
  default:
   warnx("Unhandled ccb type %#x in handle_read",
         ccb->ccb_h.func_code);
   break;
  }
 }
}
