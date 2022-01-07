
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int flags; } ;
union ccb {TYPE_1__ ccb_h; int csio; } ;
typedef int u_int8_t ;
struct scsi_inquiry_data {int dummy; } ;
struct cam_device {char* device_name; int dev_unit_num; } ;


 int CAM_ARG_ERR_RECOVER ;
 int CAM_ARG_VERBOSE ;
 int CAM_DEV_QFRZDIS ;
 int CAM_EPF_ALL ;
 int CAM_ESF_ALL ;
 int CAM_PASS_ERR_RECOVER ;
 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;
 int CCB_CLEAR_ALL_EXCEPT_HDR (int *) ;
 int SHORT_INQUIRY_LENGTH ;
 int SSD_FULL_SIZE ;
 int arglist ;
 int bzero (struct scsi_inquiry_data*,int) ;
 int cam_error_print (struct cam_device*,union ccb*,int ,int ,int ) ;
 int cam_freeccb (union ccb*) ;
 union ccb* cam_getccb (struct cam_device*) ;
 scalar_t__ cam_send_ccb (struct cam_device*,union ccb*) ;
 int fprintf (int ,char*,char*,int ) ;
 int free (struct scsi_inquiry_data*) ;
 scalar_t__ malloc (int) ;
 int scsi_inquiry (int *,int,int *,int,int *,int ,int ,int ,int ,int) ;
 int scsi_print_inquiry (struct scsi_inquiry_data*) ;
 int stderr ;
 int stdout ;
 int warn (char*) ;
 int warnx (char*) ;

__attribute__((used)) static int
scsiinquiry(struct cam_device *device, int task_attr, int retry_count,
     int timeout)
{
 union ccb *ccb;
 struct scsi_inquiry_data *inq_buf;
 int error = 0;

 ccb = cam_getccb(device);

 if (ccb == ((void*)0)) {
  warnx("couldn't allocate CCB");
  return (1);
 }


 CCB_CLEAR_ALL_EXCEPT_HDR(&ccb->csio);

 inq_buf = (struct scsi_inquiry_data *)malloc(
  sizeof(struct scsi_inquiry_data));

 if (inq_buf == ((void*)0)) {
  cam_freeccb(ccb);
  warnx("can't malloc memory for inquiry\n");
  return (1);
 }
 bzero(inq_buf, sizeof(*inq_buf));
 scsi_inquiry(&ccb->csio,
                     retry_count,
                    ((void*)0),
                        task_attr,
                     (u_int8_t *)inq_buf,
                     SHORT_INQUIRY_LENGTH,
                  0,
                       0,
                       SSD_FULL_SIZE,
                     timeout ? timeout : 5000);


 ccb->ccb_h.flags |= CAM_DEV_QFRZDIS;

 if (arglist & CAM_ARG_ERR_RECOVER)
  ccb->ccb_h.flags |= CAM_PASS_ERR_RECOVER;

 if (cam_send_ccb(device, ccb) < 0) {
  warn("error sending INQUIRY command");
  cam_freeccb(ccb);
  return (1);
 }

 if ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) {
  error = 1;

  if (arglist & CAM_ARG_VERBOSE) {
   cam_error_print(device, ccb, CAM_ESF_ALL,
     CAM_EPF_ALL, stderr);
  }
 }

 cam_freeccb(ccb);

 if (error != 0) {
  free(inq_buf);
  return (error);
 }

 fprintf(stdout, "%s%d: ", device->device_name,
  device->dev_unit_num);
 scsi_print_inquiry(inq_buf);

 free(inq_buf);

 return (0);
}
