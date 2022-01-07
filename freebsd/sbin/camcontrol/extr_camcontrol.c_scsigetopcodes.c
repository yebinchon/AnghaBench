
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dxfer_len; int resid; } ;
struct TYPE_4__ {int status; int flags; } ;
union ccb {TYPE_2__ csio; TYPE_1__ ccb_h; } ;
typedef int uint8_t ;
typedef int uint32_t ;
struct scsi_report_supported_opcodes_timeout {int length; } ;
struct scsi_report_supported_opcodes_one {int support; int cdb_length; } ;
struct scsi_report_supported_opcodes_descr {int dummy; } ;
struct scsi_report_supported_opcodes_all {int length; } ;
struct cam_device {int dummy; } ;


 int CAM_DEV_QFRZDIS ;
 int CAM_EPF_ALL ;
 int CAM_ESF_ALL ;
 int CAM_MAX_CDBLEN ;
 int CAM_PASS_ERR_RECOVER ;
 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;
 int CCB_CLEAR_ALL_EXCEPT_HDR (TYPE_2__*) ;
 int RSO_ONE_CTDP ;
 int RSO_OPTIONS_ALL ;
 int RSO_OPTIONS_MASK ;
 int RSO_OPTIONS_OC ;
 int RSO_OPTIONS_OC_SA ;
 int RSO_RCTD ;
 int SSD_FULL_SIZE ;
 int bzero (int *,int) ;
 int cam_error_print (struct cam_device*,union ccb*,int ,int ,int ) ;
 int cam_freeccb (union ccb*) ;
 union ccb* cam_getccb (struct cam_device*) ;
 scalar_t__ cam_send_ccb (struct cam_device*,union ccb*) ;
 int free (int *) ;
 int * malloc (int) ;
 int scsi_2btoul (int ) ;
 int scsi_4btoul (int ) ;
 int scsi_report_supported_opcodes (TYPE_2__*,int,int *,int,int,int,int,int *,int,int ,int) ;
 int stderr ;
 int warn (char*,...) ;
 int warnx (char*) ;

int
scsigetopcodes(struct cam_device *device, int opcode_set, int opcode,
        int show_sa_errors, int sa_set, int service_action,
        int timeout_desc, int task_attr, int retry_count, int timeout,
        int verbosemode, uint32_t *fill_len, uint8_t **data_ptr)
{
 union ccb *ccb = ((void*)0);
 uint8_t *buf = ((void*)0);
 uint32_t alloc_len = 0, num_opcodes;
 uint32_t valid_len = 0;
 uint32_t avail_len = 0;
 struct scsi_report_supported_opcodes_all *all_hdr;
 struct scsi_report_supported_opcodes_one *one;
 int options = 0;
 int retval = 0;




 *fill_len = 0;
 *data_ptr = ((void*)0);

 ccb = cam_getccb(device);
 if (ccb == ((void*)0)) {
  warnx("couldn't allocate CCB");
  retval = 1;
  goto bailout;
 }


 CCB_CLEAR_ALL_EXCEPT_HDR(&ccb->csio);

 if (opcode_set != 0) {
  options |= RSO_OPTIONS_OC;
  num_opcodes = 1;
  alloc_len = sizeof(*one) + CAM_MAX_CDBLEN;
 } else {
  num_opcodes = 256;
  alloc_len = sizeof(*all_hdr) + (num_opcodes *
      sizeof(struct scsi_report_supported_opcodes_descr));
 }

 if (timeout_desc != 0) {
  options |= RSO_RCTD;
  alloc_len += num_opcodes *
      sizeof(struct scsi_report_supported_opcodes_timeout);
 }

 if (sa_set != 0) {
  options |= RSO_OPTIONS_OC_SA;
  if (show_sa_errors != 0)
   options &= ~RSO_OPTIONS_OC;
 }

retry_alloc:
 if (buf != ((void*)0)) {
  free(buf);
  buf = ((void*)0);
 }

 buf = malloc(alloc_len);
 if (buf == ((void*)0)) {
  warn("Unable to allocate %u bytes", alloc_len);
  retval = 1;
  goto bailout;
 }
 bzero(buf, alloc_len);

 scsi_report_supported_opcodes(&ccb->csio,
                      retry_count,
                     ((void*)0),
                         task_attr,
                      options,
                         opcode,
                                 service_action,
                       buf,
                        alloc_len,
                        SSD_FULL_SIZE,
                      timeout ? timeout : 10000);

 ccb->ccb_h.flags |= CAM_DEV_QFRZDIS;

 if (retry_count != 0)
  ccb->ccb_h.flags |= CAM_PASS_ERR_RECOVER;

 if (cam_send_ccb(device, ccb) < 0) {
  warn("error sending REPORT SUPPORTED OPERATION CODES command");
  retval = 1;
  goto bailout;
 }

 if ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) {
  if (verbosemode != 0)
   cam_error_print(device, ccb, CAM_ESF_ALL,
     CAM_EPF_ALL, stderr);
  retval = 1;
  goto bailout;
 }

 valid_len = ccb->csio.dxfer_len - ccb->csio.resid;

 if (((options & RSO_OPTIONS_MASK) == RSO_OPTIONS_ALL)
  && (valid_len >= sizeof(*all_hdr))) {
  all_hdr = (struct scsi_report_supported_opcodes_all *)buf;
  avail_len = scsi_4btoul(all_hdr->length) + sizeof(*all_hdr);
 } else if (((options & RSO_OPTIONS_MASK) != RSO_OPTIONS_ALL)
  && (valid_len >= sizeof(*one))) {
  uint32_t cdb_length;

  one = (struct scsi_report_supported_opcodes_one *)buf;
  cdb_length = scsi_2btoul(one->cdb_length);
  avail_len = sizeof(*one) + cdb_length;
  if (one->support & RSO_ONE_CTDP) {
   struct scsi_report_supported_opcodes_timeout *td;

   td = (struct scsi_report_supported_opcodes_timeout *)
       &buf[avail_len];
   if (valid_len >= (avail_len + sizeof(td->length))) {
    avail_len += scsi_2btoul(td->length) +
        sizeof(td->length);
   } else {
    avail_len += sizeof(*td);
   }
  }
 }





 if ((avail_len != 0)
  && (avail_len > valid_len)) {
  alloc_len = avail_len;
  goto retry_alloc;
 }

 *fill_len = valid_len;
 *data_ptr = buf;
bailout:
 if (retval != 0)
  free(buf);

 cam_freeccb(ccb);

 return (retval);
}
