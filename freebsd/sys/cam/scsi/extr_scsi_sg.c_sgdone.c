
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct sg_rdwr* ccb_rdwr; } ;
struct TYPE_3__ {int ccb_type; int flags; } ;
struct ccb_scsiio {int tag_action; TYPE_1__ ccb_h; int dxfer_len; } ;
union ccb {TYPE_2__ ccb_h; struct ccb_scsiio csio; } ;
struct sg_softc {int device_stats; } ;
struct sg_rdwr {int state; } ;
struct cam_periph {scalar_t__ softc; } ;


 int CAM_DIR_MASK ;
 int CAM_DIR_NONE ;
 int CAM_DIR_OUT ;
 int DEVSTAT_NO_DATA ;
 int DEVSTAT_READ ;
 int DEVSTAT_WRITE ;

 int SG_RDWR_DONE ;
 int devstat_end_transaction (int ,int ,int,int ,int *,int *) ;
 int panic (char*) ;
 int wakeup (struct sg_rdwr*) ;

__attribute__((used)) static void
sgdone(struct cam_periph *periph, union ccb *done_ccb)
{
 struct sg_softc *softc;
 struct ccb_scsiio *csio;

 softc = (struct sg_softc *)periph->softc;
 csio = &done_ccb->csio;
 switch (csio->ccb_h.ccb_type) {
 case 128:
 {
  struct sg_rdwr *rdwr;
  int state;

  devstat_end_transaction(softc->device_stats,
     csio->dxfer_len,
     csio->tag_action & 0xf,
     ((csio->ccb_h.flags & CAM_DIR_MASK) ==
     CAM_DIR_NONE) ? DEVSTAT_NO_DATA :
     (csio->ccb_h.flags & CAM_DIR_OUT) ?
     DEVSTAT_WRITE : DEVSTAT_READ,
     ((void*)0), ((void*)0));

  rdwr = done_ccb->ccb_h.ccb_rdwr;
  state = rdwr->state;
  rdwr->state = SG_RDWR_DONE;
  wakeup(rdwr);
  break;
 }
 default:
  panic("unknown sg CCB type");
 }
}
