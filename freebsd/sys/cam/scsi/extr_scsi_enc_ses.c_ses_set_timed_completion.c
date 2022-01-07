
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ status; } ;
union ccb {TYPE_1__ ccb_h; int csio; } ;
typedef int uint8_t ;
struct ses_mgmt_mode_page {int byte5; int max_comp_time; } ;
struct cam_periph {int dummy; } ;
struct TYPE_8__ {int ses_flags; } ;
typedef TYPE_2__ ses_softc_t ;
struct TYPE_9__ {TYPE_2__* enc_private; struct cam_periph* periph; } ;
typedef TYPE_3__ enc_softc_t ;


 int CAM_PRIORITY_NORMAL ;
 scalar_t__ CAM_REQ_CMP ;
 int ENC_CFLAGS ;
 int ENC_FLAGS ;
 int ENC_FREE (int*) ;
 int ENC_LOG (TYPE_3__*,char*) ;
 int* ENC_MALLOCZ (size_t) ;
 int ENC_VLOG (TYPE_3__*,char*) ;
 int FALSE ;
 int MSG_SIMPLE_Q_TAG ;
 int SES_FLAG_TIMEDCOMP ;
 int SES_MGMT_MODE_PAGE_CODE ;
 int SES_MGMT_TIMED_COMP_EN ;
 int SF_QUIET_IR ;
 int SMS_PAGE_CTRL_CURRENT ;
 int SSD_FULL_SIZE ;
 int TRUE ;
 int bzero (int *,int) ;
 union ccb* cam_periph_getccb (struct cam_periph*,int ) ;
 int cam_periph_runccb (union ccb*,int ,int ,int,int *) ;
 int enc_error ;
 int scsi_mode_select (int *,int,int *,int ,int ,int ,int*,size_t,int ,int) ;
 int scsi_mode_sense (int *,int,int *,int ,int ,int ,int ,int*,size_t,int ,int) ;
 int xpt_release_ccb (union ccb*) ;

__attribute__((used)) static int
ses_set_timed_completion(enc_softc_t *enc, uint8_t tc_en)
{
 union ccb *ccb;
 struct cam_periph *periph;
 struct ses_mgmt_mode_page *mgmt;
 uint8_t *mode_buf;
 size_t mode_buf_len;
 ses_softc_t *ses;

 periph = enc->periph;
 ses = enc->enc_private;
 ccb = cam_periph_getccb(periph, CAM_PRIORITY_NORMAL);

 mode_buf_len = sizeof(struct ses_mgmt_mode_page);
 mode_buf = ENC_MALLOCZ(mode_buf_len);
 if (mode_buf == ((void*)0))
  goto out;

 scsi_mode_sense(&ccb->csio, 4, ((void*)0), MSG_SIMPLE_Q_TAG,
            FALSE, SMS_PAGE_CTRL_CURRENT, SES_MGMT_MODE_PAGE_CODE,
     mode_buf, mode_buf_len, SSD_FULL_SIZE, 60 * 1000);





 cam_periph_runccb(ccb, enc_error, ENC_CFLAGS,
     ENC_FLAGS|SF_QUIET_IR, ((void*)0));
 if (ccb->ccb_h.status != CAM_REQ_CMP) {
  ENC_VLOG(enc, "Timed Completion Unsupported\n");
  goto release;
 }


 mgmt = (struct ses_mgmt_mode_page *)mode_buf;
 if ((mgmt->byte5 & SES_MGMT_TIMED_COMP_EN) == tc_en)
  goto done;


 if (tc_en)
  mgmt->byte5 |= SES_MGMT_TIMED_COMP_EN;
 else
  mgmt->byte5 &= ~SES_MGMT_TIMED_COMP_EN;

 bzero(&mgmt->max_comp_time, sizeof(mgmt->max_comp_time));

 scsi_mode_select(&ccb->csio, 5, ((void*)0), MSG_SIMPLE_Q_TAG,
                 FALSE, TRUE, mode_buf, mode_buf_len,
     SSD_FULL_SIZE, 60 * 1000);

 cam_periph_runccb(ccb, enc_error, ENC_CFLAGS, ENC_FLAGS, ((void*)0));
 if (ccb->ccb_h.status != CAM_REQ_CMP) {
  ENC_VLOG(enc, "Timed Completion Set Failed\n");
  goto release;
 }

done:
 if ((mgmt->byte5 & SES_MGMT_TIMED_COMP_EN) != 0) {
  ENC_LOG(enc, "Timed Completion Enabled\n");
  ses->ses_flags |= SES_FLAG_TIMEDCOMP;
 } else {
  ENC_LOG(enc, "Timed Completion Disabled\n");
  ses->ses_flags &= ~SES_FLAG_TIMEDCOMP;
 }
release:
 ENC_FREE(mode_buf);
 xpt_release_ccb(ccb);
out:
 return (ses->ses_flags & SES_FLAG_TIMEDCOMP);
}
