
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; int path; } ;
struct ccb_scsiio {int * data_ptr; } ;
union ccb {TYPE_1__ ccb_h; struct ccb_scsiio csio; } ;
typedef int uint8_t ;
typedef int u_int8_t ;
typedef int u_int ;
struct scsi_vpd_unit_serial_number {int dummy; } ;
struct scsi_vpd_supported_page_list {int dummy; } ;
struct scsi_vpd_extended_inquiry_data {int dummy; } ;
struct scsi_vpd_device_id {int dummy; } ;
struct scsi_mode_header_6 {int dummy; } ;
struct scsi_mode_blk_desc {int dummy; } ;
struct scsi_inquiry_data {int dummy; } ;
struct scsi_control_page {int dummy; } ;
struct cam_periph {TYPE_4__* path; scalar_t__ softc; } ;
struct cam_ed {int flags; int serial_num_len; unsigned char* serial_num; struct scsi_inquiry_data inq_data; } ;
struct TYPE_10__ {int action; int flags; int context; int digest; } ;
typedef TYPE_3__ probe_softc ;
struct TYPE_12__ {int quirks; } ;
struct TYPE_11__ {struct cam_ed* device; TYPE_2__* target; } ;
struct TYPE_9__ {int rpl_size; } ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int CAM_DEV_QFREEZE ;
 int CAM_DEV_UNCONFIGURED ;
 int CAM_QUIRK_NOVPDS ;
 int FALSE ;
 int INQ_DATA_TQ_ENABLED (struct scsi_inquiry_data*) ;
 int MD5Final (int ,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,unsigned char*,int) ;
 int MSG_SIMPLE_Q_TAG ;
 int M_CAMXPT ;
 int M_NOWAIT ;
 int M_ZERO ;







 int PROBE_INQUIRY_CKSUM ;


 int PROBE_SERIAL_CKSUM ;

 int PROBE_SET_ACTION (TYPE_3__*,int const) ;



 int RPL_REPORT_DEFAULT ;
 TYPE_6__* SCSI_QUIRK (struct cam_ed*) ;
 int SHORT_INQUIRY_LENGTH ;
 int SID_ADDITIONAL_LENGTH (struct scsi_inquiry_data*) ;
 int SMS_CONTROL_MODE_PAGE ;
 int SMS_PAGE_CTRL_CURRENT ;
 int SSD_FULL_SIZE ;
 int SSD_MIN_SIZE ;
 int SVPD_DEVICE_ID ;
 int SVPD_DEVICE_ID_MAX_SIZE ;
 int SVPD_EXTENDED_INQUIRY_DATA ;
 int SVPD_SUPPORTED_PAGE_LIST ;
 int SVPD_UNIT_SERIAL_NUMBER ;
 int TRUE ;
 int cam_freeze_devq (TYPE_4__*) ;
 int cam_periph_doacquire (struct cam_periph*) ;
 int free (unsigned char*,int ) ;
 void* malloc (int,int ,int) ;
 int panic (char*,int const) ;
 int probedone (struct cam_periph*,union ccb*) ;
 int roundup2 (int,int) ;
 int scsi_inquiry (struct ccb_scsiio*,int,int (*) (struct cam_periph*,union ccb*),int ,int *,int,int ,int ,int ,int) ;
 int scsi_mode_sense (struct ccb_scsiio*,int,int (*) (struct cam_periph*,union ccb*),int ,int ,int ,int ,void*,int,int ,int) ;
 int scsi_report_luns (struct ccb_scsiio*,int,int (*) (struct cam_periph*,union ccb*),int ,int ,void*,int,int ,int) ;
 int scsi_test_unit_ready (struct ccb_scsiio*,int,int (*) (struct cam_periph*,union ccb*),int ,int ,int) ;
 int scsi_vpd_supported_page (struct cam_periph*,int ) ;
 int xpt_action (union ccb*) ;
 int xpt_print (TYPE_4__*,char*) ;

__attribute__((used)) static void
probestart(struct cam_periph *periph, union ccb *start_ccb)
{

 struct ccb_scsiio *csio;
 probe_softc *softc;

 CAM_DEBUG(start_ccb->ccb_h.path, CAM_DEBUG_TRACE, ("probestart\n"));

 softc = (probe_softc *)periph->softc;
 csio = &start_ccb->csio;
again:

 switch (softc->action) {
 case 129:
 case 128:
 case 139:
 {
  scsi_test_unit_ready(csio,
                    4,
         probedone,
         MSG_SIMPLE_Q_TAG,
         SSD_FULL_SIZE,
                    60000);
  break;
 }
 case 136:
 case 137:
 case 135:
 case 134:
 {
  u_int inquiry_len;
  struct scsi_inquiry_data *inq_buf;

  inq_buf = &periph->path->device->inq_data;
  if (((periph->path->device->flags & CAM_DEV_UNCONFIGURED) == 0)
   && ((softc->flags & PROBE_INQUIRY_CKSUM) == 0)) {

   MD5Init(&softc->context);
   MD5Update(&softc->context, (unsigned char *)inq_buf,
      sizeof(struct scsi_inquiry_data));
   softc->flags |= PROBE_INQUIRY_CKSUM;
   if (periph->path->device->serial_num_len > 0) {
    MD5Update(&softc->context,
       periph->path->device->serial_num,
       periph->path->device->serial_num_len);
    softc->flags |= PROBE_SERIAL_CKSUM;
   }
   MD5Final(softc->digest, &softc->context);
  }

  if (softc->action == 136)
   inquiry_len = SHORT_INQUIRY_LENGTH;
  else
   inquiry_len = SID_ADDITIONAL_LENGTH(inq_buf);







  inquiry_len = roundup2(inquiry_len, 2);

  if (softc->action == 135
   || softc->action == 134) {
   inq_buf = malloc(inquiry_len, M_CAMXPT, M_NOWAIT);
  }
  if (inq_buf == ((void*)0)) {
   xpt_print(periph->path, "malloc failure- skipping Basic"
       "Domain Validation\n");
   PROBE_SET_ACTION(softc, 139);
   scsi_test_unit_ready(csio,
                     4,
          probedone,
          MSG_SIMPLE_Q_TAG,
          SSD_FULL_SIZE,
                     60000);
   break;
  }
  scsi_inquiry(csio,
                   4,
        probedone,
        MSG_SIMPLE_Q_TAG,
        (u_int8_t *)inq_buf,
        inquiry_len,
                FALSE,
                     0,
        SSD_MIN_SIZE,
                   60 * 1000);
  break;
 }
 case 132:
 {
  void *rp;

  rp = malloc(periph->path->target->rpl_size,
      M_CAMXPT, M_NOWAIT | M_ZERO);
  if (rp == ((void*)0)) {
   struct scsi_inquiry_data *inq_buf;
   inq_buf = &periph->path->device->inq_data;
   xpt_print(periph->path,
       "Unable to alloc report luns storage\n");
   if (INQ_DATA_TQ_ENABLED(inq_buf))
    PROBE_SET_ACTION(softc, 133);
   else
    PROBE_SET_ACTION(softc,
        130);
   goto again;
  }
  scsi_report_luns(csio, 5, probedone, MSG_SIMPLE_Q_TAG,
      RPL_REPORT_DEFAULT, rp, periph->path->target->rpl_size,
      SSD_FULL_SIZE, 60000); break;
  break;
 }
 case 133:
 {
  void *mode_buf;
  int mode_buf_len;

  mode_buf_len = sizeof(struct scsi_mode_header_6)
        + sizeof(struct scsi_mode_blk_desc)
        + sizeof(struct scsi_control_page);
  mode_buf = malloc(mode_buf_len, M_CAMXPT, M_NOWAIT);
  if (mode_buf != ((void*)0)) {
                 scsi_mode_sense(csio,
                4,
     probedone,
     MSG_SIMPLE_Q_TAG,
            FALSE,
     SMS_PAGE_CTRL_CURRENT,
     SMS_CONTROL_MODE_PAGE,
     mode_buf,
     mode_buf_len,
     SSD_FULL_SIZE,
                60000);
   break;
  }
  xpt_print(periph->path, "Unable to mode sense control page - "
      "malloc failure\n");
  PROBE_SET_ACTION(softc, 130);
 }

 case 130:
 {
  struct scsi_vpd_supported_page_list *vpd_list;
  struct cam_ed *device;

  vpd_list = ((void*)0);
  device = periph->path->device;

  if ((SCSI_QUIRK(device)->quirks & CAM_QUIRK_NOVPDS) == 0)
   vpd_list = malloc(sizeof(*vpd_list), M_CAMXPT,
       M_NOWAIT | M_ZERO);

  if (vpd_list != ((void*)0)) {
   scsi_inquiry(csio,
                    4,
         probedone,
         MSG_SIMPLE_Q_TAG,
         (u_int8_t *)vpd_list,
         sizeof(*vpd_list),
                 TRUE,
         SVPD_SUPPORTED_PAGE_LIST,
         SSD_MIN_SIZE,
                    60 * 1000);
   break;
  }
done:




  start_ccb->csio.data_ptr = ((void*)0);
  cam_freeze_devq(periph->path);
  cam_periph_doacquire(periph);
  probedone(periph, start_ccb);
  return;
 }
 case 140:
 {
  struct scsi_vpd_device_id *devid;

  devid = ((void*)0);
  if (scsi_vpd_supported_page(periph, SVPD_DEVICE_ID))
   devid = malloc(SVPD_DEVICE_ID_MAX_SIZE, M_CAMXPT,
       M_NOWAIT | M_ZERO);

  if (devid != ((void*)0)) {
   scsi_inquiry(csio,
                    4,
         probedone,
         MSG_SIMPLE_Q_TAG,
         (uint8_t *)devid,
         SVPD_DEVICE_ID_MAX_SIZE,
                 TRUE,
         SVPD_DEVICE_ID,
         SSD_MIN_SIZE,
                    60 * 1000);
   break;
  }
  goto done;
 }
 case 138:
 {
  struct scsi_vpd_extended_inquiry_data *ext_inq;

  ext_inq = ((void*)0);
  if (scsi_vpd_supported_page(periph, SVPD_EXTENDED_INQUIRY_DATA))
   ext_inq = malloc(sizeof(*ext_inq), M_CAMXPT,
       M_NOWAIT | M_ZERO);

  if (ext_inq != ((void*)0)) {
   scsi_inquiry(csio,
                    4,
         probedone,
         MSG_SIMPLE_Q_TAG,
         (uint8_t *)ext_inq,
         sizeof(*ext_inq),
                 TRUE,
         SVPD_EXTENDED_INQUIRY_DATA,
         SSD_MIN_SIZE,
                    60 * 1000);
   break;
  }




  goto done;
 }
 case 131:
 {
  struct scsi_vpd_unit_serial_number *serial_buf;
  struct cam_ed* device;

  serial_buf = ((void*)0);
  device = periph->path->device;
  if (device->serial_num != ((void*)0)) {
   free(device->serial_num, M_CAMXPT);
   device->serial_num = ((void*)0);
   device->serial_num_len = 0;
  }

  if (scsi_vpd_supported_page(periph, SVPD_UNIT_SERIAL_NUMBER))
   serial_buf = (struct scsi_vpd_unit_serial_number *)
    malloc(sizeof(*serial_buf), M_CAMXPT,
        M_NOWAIT|M_ZERO);

  if (serial_buf != ((void*)0)) {
   scsi_inquiry(csio,
                    4,
         probedone,
         MSG_SIMPLE_Q_TAG,
         (u_int8_t *)serial_buf,
         sizeof(*serial_buf),
                 TRUE,
         SVPD_UNIT_SERIAL_NUMBER,
         SSD_MIN_SIZE,
                    60 * 1000);
   break;
  }
  goto done;
 }
 default:
  panic("probestart: invalid action state 0x%x\n", softc->action);
 }
 start_ccb->ccb_h.flags |= CAM_DEV_QFREEZE;
 cam_periph_doacquire(periph);
 xpt_action(start_ccb);
}
