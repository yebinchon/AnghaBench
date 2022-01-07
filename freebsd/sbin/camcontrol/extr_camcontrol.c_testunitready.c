
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int flags; } ;
union ccb {TYPE_1__ ccb_h; int csio; } ;
struct cam_device {int dummy; } ;


 int CAM_ARG_ERR_RECOVER ;
 int CAM_ARG_VERBOSE ;
 int CAM_DEV_QFRZDIS ;
 int CAM_EPF_ALL ;
 int CAM_ESF_ALL ;
 int CAM_PASS_ERR_RECOVER ;
 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;
 int SSD_FULL_SIZE ;
 int arglist ;
 int cam_error_print (struct cam_device*,union ccb*,int ,int ,int ) ;
 int cam_freeccb (union ccb*) ;
 union ccb* cam_getccb (struct cam_device*) ;
 scalar_t__ cam_send_ccb (struct cam_device*,union ccb*) ;
 int fprintf (int ,char*) ;
 int scsi_test_unit_ready (int *,int,int *,int,int ,int) ;
 int stderr ;
 int stdout ;
 int warn (char*) ;

__attribute__((used)) static int
testunitready(struct cam_device *device, int task_attr, int retry_count,
       int timeout, int quiet)
{
 int error = 0;
 union ccb *ccb;

 ccb = cam_getccb(device);

 scsi_test_unit_ready(&ccb->csio,
                      retry_count,
                     ((void*)0),
                         task_attr,
                        SSD_FULL_SIZE,
                      timeout ? timeout : 5000);


 ccb->ccb_h.flags |= CAM_DEV_QFRZDIS;

 if (arglist & CAM_ARG_ERR_RECOVER)
  ccb->ccb_h.flags |= CAM_PASS_ERR_RECOVER;

 if (cam_send_ccb(device, ccb) < 0) {
  if (quiet == 0)
   warn("error sending TEST UNIT READY command");
  cam_freeccb(ccb);
  return (1);
 }

 if ((ccb->ccb_h.status & CAM_STATUS_MASK) == CAM_REQ_CMP) {
  if (quiet == 0)
   fprintf(stdout, "Unit is ready\n");
 } else {
  if (quiet == 0)
   fprintf(stdout, "Unit is not ready\n");
  error = 1;

  if (arglist & CAM_ARG_VERBOSE) {
   cam_error_print(device, ccb, CAM_ESF_ALL,
     CAM_EPF_ALL, stderr);
  }
 }

 cam_freeccb(ccb);

 return (error);
}
