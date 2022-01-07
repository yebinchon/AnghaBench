
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ccb {int csio; } ;
typedef int u_int8_t ;
typedef int u_int16_t ;
struct scsi_send_volume_tag_parameters {char* vitf; int minvsn; } ;
struct TYPE_2__ {int cv_serial; int cv_volid; } ;
struct changer_set_voltag_request {size_t csvr_type; int csvr_addr; int csvr_flags; TYPE_1__ csvr_voltag; } ;
struct ch_softc {int* sc_counts; int* sc_firsts; int device_stats; } ;
struct cam_periph {scalar_t__ softc; } ;
typedef int ssvtp ;


 int CAM_PRIORITY_NORMAL ;
 int CAM_RETRY_SELTO ;
 size_t CHET_DT ;
 int CH_TIMEOUT_SEND_VOLTAG ;
 int CSVR_ALTERNATE ;

 int CSVR_MODE_MASK ;


 int EINVAL ;
 int ENODEV ;
 int MSG_SIMPLE_Q_TAG ;
 int SEND_VOLUME_TAG_ASSERT_ALTERNATE ;
 int SEND_VOLUME_TAG_ASSERT_PRIMARY ;
 int SEND_VOLUME_TAG_REPLACE_ALTERNATE ;
 int SEND_VOLUME_TAG_REPLACE_PRIMARY ;
 int SEND_VOLUME_TAG_UNDEFINED_ALTERNATE ;
 int SEND_VOLUME_TAG_UNDEFINED_PRIMARY ;
 int SF_RETRY_UA ;
 int SSD_FULL_SIZE ;
 int bzero (struct scsi_send_volume_tag_parameters*,int) ;
 union ccb* cam_periph_getccb (struct cam_periph*,int ) ;
 int cam_periph_runccb (union ccb*,int ,int ,int ,int ) ;
 int chdone ;
 int cherror ;
 int memcpy (char*,int ,int ) ;
 int min (int ,int) ;
 int scsi_send_volume_tag (int *,int,int ,int ,int,int ,struct scsi_send_volume_tag_parameters*,int ,int ) ;
 int scsi_ulto2b (int ,int ) ;
 int strlen (int ) ;
 int xpt_release_ccb (union ccb*) ;

__attribute__((used)) static int
chsetvoltag(struct cam_periph *periph,
     struct changer_set_voltag_request *csvr)
{
 union ccb *ccb;
 struct ch_softc *softc;
 u_int16_t ea;
 u_int8_t sac;
 struct scsi_send_volume_tag_parameters ssvtp;
 int error;
 int i;

 error = 0;
 softc = (struct ch_softc *)periph->softc;

 bzero(&ssvtp, sizeof(ssvtp));
 for (i=0; i<sizeof(ssvtp.vitf); i++) {
  ssvtp.vitf[i] = ' ';
 }




 if (csvr->csvr_type > CHET_DT)
  return EINVAL;
 if (csvr->csvr_addr > (softc->sc_counts[csvr->csvr_type] - 1))
  return ENODEV;

 ea = softc->sc_firsts[csvr->csvr_type] + csvr->csvr_addr;

 if (csvr->csvr_flags & CSVR_ALTERNATE) {
  switch (csvr->csvr_flags & CSVR_MODE_MASK) {
  case 128:
   sac = SEND_VOLUME_TAG_ASSERT_ALTERNATE;
   break;
  case 129:
   sac = SEND_VOLUME_TAG_REPLACE_ALTERNATE;
   break;
  case 130:
   sac = SEND_VOLUME_TAG_UNDEFINED_ALTERNATE;
   break;
  default:
   error = EINVAL;
   goto out;
  }
 } else {
  switch (csvr->csvr_flags & CSVR_MODE_MASK) {
  case 128:
   sac = SEND_VOLUME_TAG_ASSERT_PRIMARY;
   break;
  case 129:
   sac = SEND_VOLUME_TAG_REPLACE_PRIMARY;
   break;
  case 130:
   sac = SEND_VOLUME_TAG_UNDEFINED_PRIMARY;
   break;
  default:
   error = EINVAL;
   goto out;
  }
 }

 memcpy(ssvtp.vitf, csvr->csvr_voltag.cv_volid,
        min(strlen(csvr->csvr_voltag.cv_volid), sizeof(ssvtp.vitf)));
 scsi_ulto2b(csvr->csvr_voltag.cv_serial, ssvtp.minvsn);

 ccb = cam_periph_getccb(periph, CAM_PRIORITY_NORMAL);

 scsi_send_volume_tag(&ccb->csio,
                      1,
                     chdone,
                         MSG_SIMPLE_Q_TAG,
                              ea,
                               sac,
                         &ssvtp,
                        SSD_FULL_SIZE,
                      CH_TIMEOUT_SEND_VOLTAG);

 error = cam_periph_runccb(ccb, cherror, CAM_RETRY_SELTO,
                      SF_RETRY_UA,
      softc->device_stats);

 xpt_release_ccb(ccb);

 out:
 return error;
}
