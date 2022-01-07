
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct ccb_accept_tio* ccb_atio; int ccb_type; int target_lun; int target_id; } ;
struct ccb_scsiio {int sense_data; scalar_t__ sense_len; } ;
union ccb {TYPE_1__ ccb_h; struct ccb_scsiio csio; } ;
struct targbh_softc {int work_queue; int pending_queue; } ;
struct targbh_cmd_desc {scalar_t__ data_resid; scalar_t__ data_increment; int timeout; int * data; int status; } ;
struct ccb_hdr {int dummy; } ;
struct TYPE_5__ {int flags; int status; int target_lun; int target_id; scalar_t__ ccb_descr; } ;
struct ccb_accept_tio {TYPE_2__ ccb_h; int init_id; int tag_id; int sense_data; scalar_t__ sense_len; } ;
struct cam_periph {int path; scalar_t__ softc; } ;
typedef int ccb_flags ;
struct TYPE_6__ {int tqe; } ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_SUBTRACE ;
 int CAM_DEV_QFRZN ;
 int CAM_DIR_MASK ;
 int CAM_DIS_DISCONNECT ;
 int CAM_PRIORITY_NORMAL ;
 int CAM_SEND_SENSE ;
 int CAM_SEND_STATUS ;
 int CAM_TAG_ACTION_VALID ;
 int MSG_SIMPLE_Q_TAG ;
 struct ccb_hdr* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct ccb_hdr*,int ) ;
 int TAILQ_REMOVE (int *,struct ccb_hdr*,int ) ;
 int TARGBH_CCB_WORKQ ;
 int cam_fill_ctio (struct ccb_scsiio*,int,int ,int,int ,int ,int ,int ,int *,scalar_t__,int ) ;
 int cam_release_devq (int ,int ,int ,int ,int ) ;
 TYPE_3__ periph_links ;
 int targbhdone ;
 int xpt_action (union ccb*) ;
 int xpt_release_ccb (union ccb*) ;
 int xpt_schedule (struct cam_periph*,int ) ;

__attribute__((used)) static void
targbhstart(struct cam_periph *periph, union ccb *start_ccb)
{
 struct targbh_softc *softc;
 struct ccb_hdr *ccbh;
 struct ccb_accept_tio *atio;
 struct targbh_cmd_desc *desc;
 struct ccb_scsiio *csio;
 ccb_flags flags;

 softc = (struct targbh_softc *)periph->softc;

 ccbh = TAILQ_FIRST(&softc->work_queue);
 if (ccbh == ((void*)0)) {
  xpt_release_ccb(start_ccb);
 } else {
  TAILQ_REMOVE(&softc->work_queue, ccbh, periph_links.tqe);
  TAILQ_INSERT_HEAD(&softc->pending_queue, ccbh,
      periph_links.tqe);
  atio = (struct ccb_accept_tio*)ccbh;
  desc = (struct targbh_cmd_desc *)atio->ccb_h.ccb_descr;


  flags = atio->ccb_h.flags &
      (CAM_DIS_DISCONNECT|CAM_TAG_ACTION_VALID|CAM_DIR_MASK);

  csio = &start_ccb->csio;






  if (desc->data_resid == desc->data_increment) {
   flags |= CAM_SEND_STATUS;
   if (atio->sense_len) {
    csio->sense_len = atio->sense_len;
    csio->sense_data = atio->sense_data;
    flags |= CAM_SEND_SENSE;
   }

  }

  cam_fill_ctio(csio,
                    2,
         targbhdone,
         flags,
         (flags & CAM_TAG_ACTION_VALID)?
    MSG_SIMPLE_Q_TAG : 0,
         atio->tag_id,
         atio->init_id,
         desc->status,
                     desc->data_increment == 0
       ? ((void*)0) : desc->data,
                      desc->data_increment,
                    desc->timeout);


  start_ccb->ccb_h.target_id = atio->ccb_h.target_id;
  start_ccb->ccb_h.target_lun = atio->ccb_h.target_lun;

  start_ccb->ccb_h.ccb_type = TARGBH_CCB_WORKQ;
  start_ccb->ccb_h.ccb_atio = atio;
  CAM_DEBUG(periph->path, CAM_DEBUG_SUBTRACE,
     ("Sending a CTIO\n"));
  xpt_action(start_ccb);





  if ((atio->ccb_h.status & CAM_DEV_QFRZN) != 0) {
   cam_release_devq(periph->path,
                      0,
                   0,
                 0,
                       0);
   atio->ccb_h.status &= ~CAM_DEV_QFRZN;
  }
  ccbh = TAILQ_FIRST(&softc->work_queue);
 }
 if (ccbh != ((void*)0))
  xpt_schedule(periph, CAM_PRIORITY_NORMAL);
}
