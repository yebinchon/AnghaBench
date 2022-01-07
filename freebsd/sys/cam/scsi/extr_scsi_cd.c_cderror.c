
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int u_int32_t ;
struct cd_softc {int flags; int quirks; int disk; } ;
struct cam_periph {scalar_t__ softc; } ;


 int CAM_REQ_INVALID ;
 int CAM_STATUS_MASK ;
 int CD_FLAG_SAW_MEDIA ;
 int CD_Q_RETRY_BUSY ;
 int ERESTART ;
 int M_NOWAIT ;
 int SF_RETRY_BUSY ;
 int SF_RETRY_UA ;
 int SSD_KEY_ILLEGAL_REQUEST ;
 int SSD_KEY_NOT_READY ;
 int SSD_KEY_UNIT_ATTENTION ;
 int cam_periph_error (union ccb*,int ,int ) ;
 int cd6byteworkaround (union ccb*) ;
 int disk_media_changed (int ,int ) ;
 int disk_media_gone (int ,int ) ;
 scalar_t__ scsi_extract_sense_ccb (union ccb*,int*,int*,int*,int*) ;
 struct cam_periph* xpt_path_periph (int ) ;

__attribute__((used)) static int
cderror(union ccb *ccb, u_int32_t cam_flags, u_int32_t sense_flags)
{
 struct cd_softc *softc;
 struct cam_periph *periph;
 int error, error_code, sense_key, asc, ascq;

 periph = xpt_path_periph(ccb->ccb_h.path);
 softc = (struct cd_softc *)periph->softc;

 error = 0;






 if ((ccb->ccb_h.status & CAM_STATUS_MASK) == CAM_REQ_INVALID) {
  error = cd6byteworkaround(ccb);
 } else if (scsi_extract_sense_ccb(ccb,
     &error_code, &sense_key, &asc, &ascq)) {
  if (sense_key == SSD_KEY_ILLEGAL_REQUEST)
   error = cd6byteworkaround(ccb);
  else if (sense_key == SSD_KEY_UNIT_ATTENTION &&
      asc == 0x28 && ascq == 0x00)
   disk_media_changed(softc->disk, M_NOWAIT);
  else if (sense_key == SSD_KEY_NOT_READY &&
      asc == 0x3a && (softc->flags & CD_FLAG_SAW_MEDIA)) {
   softc->flags &= ~CD_FLAG_SAW_MEDIA;
   disk_media_gone(softc->disk, M_NOWAIT);
  }
 }

 if (error == ERESTART)
  return (error);






 sense_flags |= SF_RETRY_UA;

 if (softc->quirks & CD_Q_RETRY_BUSY)
  sense_flags |= SF_RETRY_BUSY;
 return (cam_periph_error(ccb, cam_flags, sense_flags));
}
