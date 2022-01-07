
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct bio* ccb_bp; int ccb_state; } ;
union ccb {TYPE_2__ ccb_h; int csio; } ;
struct pt_softc {int bio_queue; int pending_ccbs; int io_timeout; int device_stats; } ;
struct cam_periph {int path; scalar_t__ softc; } ;
struct bio {scalar_t__ bio_cmd; int bio_data; int bio_bcount; } ;
struct TYPE_3__ {int le; } ;


 scalar_t__ BIO_READ ;
 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int CAM_PRIORITY_NORMAL ;
 int LIST_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 int MSG_SIMPLE_Q_TAG ;
 int PT_CCB_BUFFER_IO_UA ;
 int SSD_FULL_SIZE ;
 struct bio* bioq_first (int *) ;
 int bioq_remove (int *,struct bio*) ;
 int devstat_start_transaction_bio (int ,struct bio*) ;
 TYPE_1__ periph_links ;
 int ptdone ;
 int scsi_send_receive (int *,int,int ,int ,int,int ,int ,int ,int ,int ) ;
 int xpt_action (union ccb*) ;
 int xpt_release_ccb (union ccb*) ;
 int xpt_schedule (struct cam_periph*,int ) ;

__attribute__((used)) static void
ptstart(struct cam_periph *periph, union ccb *start_ccb)
{
 struct pt_softc *softc;
 struct bio *bp;

 softc = (struct pt_softc *)periph->softc;

 CAM_DEBUG(periph->path, CAM_DEBUG_TRACE, ("ptstart\n"));




 bp = bioq_first(&softc->bio_queue);
 if (bp == ((void*)0)) {
  xpt_release_ccb(start_ccb);
 } else {
  bioq_remove(&softc->bio_queue, bp);

  devstat_start_transaction_bio(softc->device_stats, bp);

  scsi_send_receive(&start_ccb->csio,
                 4,
      ptdone,
      MSG_SIMPLE_Q_TAG,
      bp->bio_cmd == BIO_READ,
               0,
      bp->bio_bcount,
      bp->bio_data,
                   SSD_FULL_SIZE,
                 softc->io_timeout);

  start_ccb->ccb_h.ccb_state = PT_CCB_BUFFER_IO_UA;





  LIST_INSERT_HEAD(&softc->pending_ccbs, &start_ccb->ccb_h,
     periph_links.le);

  start_ccb->ccb_h.ccb_bp = bp;
  bp = bioq_first(&softc->bio_queue);

  xpt_action(start_ccb);

  if (bp != ((void*)0)) {

   xpt_schedule(periph, CAM_PRIORITY_NORMAL);
  }
 }
}
