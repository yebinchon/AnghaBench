
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int flags; } ;
union ccb {TYPE_1__ ccb_h; int csio; } ;
typedef int u_int8_t ;
struct scsi_vpd_unit_serial_number {size_t length; int serial_num; } ;
struct cam_device {char* device_name; int dev_unit_num; } ;


 int CAM_ARG_ERR_RECOVER ;
 int CAM_ARG_GET_STDINQ ;
 int CAM_ARG_GET_XFERRATE ;
 int CAM_ARG_VERBOSE ;
 int CAM_DEV_QFRZDIS ;
 int CAM_EPF_ALL ;
 int CAM_ESF_ALL ;
 int CAM_PASS_ERR_RECOVER ;
 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;
 int CCB_CLEAR_ALL_EXCEPT_HDR (int *) ;
 int SSD_FULL_SIZE ;
 int SVPD_SERIAL_NUM_SIZE ;
 int SVPD_UNIT_SERIAL_NUMBER ;
 int arglist ;
 int bcopy (int ,char*,size_t) ;
 int cam_error_print (struct cam_device*,union ccb*,int ,int ,int ) ;
 int cam_freeccb (union ccb*) ;
 union ccb* cam_getccb (struct cam_device*) ;
 scalar_t__ cam_send_ccb (struct cam_device*,union ccb*) ;
 int fprintf (int ,char*,char*,...) ;
 int free (struct scsi_vpd_unit_serial_number*) ;
 scalar_t__ malloc (int) ;
 int scsi_inquiry (int *,int,int *,int,int *,int,int,int ,int ,int) ;
 int stderr ;
 int stdout ;
 int warn (char*) ;
 int warnx (char*) ;

__attribute__((used)) static int
scsiserial(struct cam_device *device, int task_attr, int retry_count,
    int timeout)
{
 union ccb *ccb;
 struct scsi_vpd_unit_serial_number *serial_buf;
 char serial_num[SVPD_SERIAL_NUM_SIZE + 1];
 int error = 0;

 ccb = cam_getccb(device);

 if (ccb == ((void*)0)) {
  warnx("couldn't allocate CCB");
  return (1);
 }


 CCB_CLEAR_ALL_EXCEPT_HDR(&ccb->csio);

 serial_buf = (struct scsi_vpd_unit_serial_number *)
  malloc(sizeof(*serial_buf));

 if (serial_buf == ((void*)0)) {
  cam_freeccb(ccb);
  warnx("can't malloc memory for serial number");
  return (1);
 }

 scsi_inquiry(&ccb->csio,
                   retry_count,
                  ((void*)0),
                        task_attr,
                     (u_int8_t *)serial_buf,
                     sizeof(*serial_buf),
                  1,
                       SVPD_UNIT_SERIAL_NUMBER,
                       SSD_FULL_SIZE,
                     timeout ? timeout : 5000);


 ccb->ccb_h.flags |= CAM_DEV_QFRZDIS;

 if (arglist & CAM_ARG_ERR_RECOVER)
  ccb->ccb_h.flags |= CAM_PASS_ERR_RECOVER;

 if (cam_send_ccb(device, ccb) < 0) {
  warn("error sending INQUIRY command");
  cam_freeccb(ccb);
  free(serial_buf);
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
  free(serial_buf);
  return (error);
 }

 bcopy(serial_buf->serial_num, serial_num, serial_buf->length);
 serial_num[serial_buf->length] = '\0';

 if ((arglist & CAM_ARG_GET_STDINQ)
  || (arglist & CAM_ARG_GET_XFERRATE))
  fprintf(stdout, "%s%d: Serial Number ",
   device->device_name, device->dev_unit_num);

 fprintf(stdout, "%.60s\n", serial_num);

 free(serial_buf);

 return (0);
}
