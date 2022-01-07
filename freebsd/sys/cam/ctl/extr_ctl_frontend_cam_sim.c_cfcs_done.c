
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ sense_len; int sense_data; int scsi_status; scalar_t__ ext_data_filled; } ;
struct TYPE_7__ {int status; TYPE_1__* ctl_private; } ;
union ctl_io {TYPE_3__ scsiio; TYPE_2__ io_hdr; } ;
struct TYPE_10__ {scalar_t__ func_code; int status; int path; } ;
struct TYPE_9__ {scalar_t__ sense_len; scalar_t__ sense_resid; int sense_data; int scsi_status; scalar_t__ dxfer_len; scalar_t__ resid; } ;
union ccb {TYPE_5__ ccb_h; TYPE_4__ csio; } ;
struct TYPE_6__ {union ccb* ptr; } ;


 int CAM_AUTOSNS_VALID ;
 int CAM_DEV_QFRZN ;
 int CAM_REQ_ABORTED ;
 int CAM_REQ_CMP ;
 int CAM_REQ_CMP_ERR ;
 int CAM_SCSI_STATUS_ERROR ;
 int CAM_STATUS_MASK ;


 size_t CTL_PRIV_FRONTEND ;

 int CTL_STATUS_MASK ;
 int CTL_STATUS_NONE ;

 int KASSERT (int,char*) ;
 scalar_t__ XPT_SCSI_IO ;
 int bcopy (int *,int *,int ) ;
 scalar_t__ cfcs_max_sense ;
 int ctl_free_io (union ctl_io*) ;
 int min (scalar_t__,scalar_t__) ;
 int xpt_done (union ccb*) ;
 int xpt_freeze_devq (int ,int) ;

__attribute__((used)) static void
cfcs_done(union ctl_io *io)
{
 union ccb *ccb;

 ccb = io->io_hdr.ctl_private[CTL_PRIV_FRONTEND].ptr;
 if (ccb == ((void*)0)) {
  ctl_free_io(io);
  return;
 }




 KASSERT(((io->io_hdr.status & CTL_STATUS_MASK) != CTL_STATUS_NONE),
  ("invalid CTL status %#x", io->io_hdr.status));




 if (ccb->ccb_h.func_code == XPT_SCSI_IO) {
  ccb->csio.resid = ccb->csio.dxfer_len -
      io->scsiio.ext_data_filled;
 }
 ccb->ccb_h.status &= ~CAM_STATUS_MASK;
 switch (io->io_hdr.status & CTL_STATUS_MASK) {
 case 128:
  ccb->ccb_h.status |= CAM_REQ_CMP;
  break;
 case 129:
  ccb->ccb_h.status |= CAM_SCSI_STATUS_ERROR | CAM_AUTOSNS_VALID;
  ccb->csio.scsi_status = io->scsiio.scsi_status;
  bcopy(&io->scsiio.sense_data, &ccb->csio.sense_data,
        min(io->scsiio.sense_len, ccb->csio.sense_len));
  if (ccb->csio.sense_len > io->scsiio.sense_len)
   ccb->csio.sense_resid = ccb->csio.sense_len -
      io->scsiio.sense_len;
  else
   ccb->csio.sense_resid = 0;
  if ((ccb->csio.sense_len - ccb->csio.sense_resid) >
       cfcs_max_sense) {
   ccb->csio.sense_resid = ccb->csio.sense_len -
      cfcs_max_sense;
  }
  break;
 case 131:
  ccb->ccb_h.status |= CAM_REQ_ABORTED;
  break;
 case 130:
 default:
  ccb->ccb_h.status |= CAM_REQ_CMP_ERR;
  break;
 }
 ctl_free_io(io);
 if ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP &&
     (ccb->ccb_h.status & CAM_DEV_QFRZN) == 0) {
  xpt_freeze_devq(ccb->ccb_h.path, 1);
  ccb->ccb_h.status |= CAM_DEV_QFRZN;
 }
 xpt_done(ccb);
}
