
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int flags; } ;
union ccb {TYPE_1__ ccb_h; int csio; } ;
typedef int u_int8_t ;
struct cam_device {int dummy; } ;


 int CAM_ARG_ERR_RECOVER ;
 int CAM_ARG_VERBOSE ;
 int CAM_DEV_QFRZDIS ;
 int CAM_EPF_ALL ;
 int CAM_ESF_ALL ;
 int CAM_PASS_ERR_RECOVER ;
 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;
 int CCB_CLEAR_ALL_EXCEPT_HDR (int *) ;
 int SSD_FULL_SIZE ;
 int arglist ;
 int cam_close_device (struct cam_device*) ;
 int cam_error_print (struct cam_device*,union ccb*,int ,int ,int ) ;
 int cam_freeccb (union ccb*) ;
 union ccb* cam_getccb (struct cam_device*) ;
 int cam_send_ccb (struct cam_device*,union ccb*) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int scsi_mode_select_len (int *,int,int *,int,int,int,int *,int,int,int ,int) ;
 int stderr ;

void
mode_select(struct cam_device *device, int cdb_len, int save_pages,
    int task_attr, int retry_count, int timeout, u_int8_t *data, int datalen)
{
 union ccb *ccb;
 int retval;

 ccb = cam_getccb(device);

 if (ccb == ((void*)0))
  errx(1, "mode_select: couldn't allocate CCB");

 CCB_CLEAR_ALL_EXCEPT_HDR(&ccb->csio);

 scsi_mode_select_len(&ccb->csio,
                  retry_count,
                 ((void*)0),
                     task_attr,
                        1,
                     save_pages,
                    data,
                    datalen,
                           cdb_len,
                    SSD_FULL_SIZE,
                  timeout ? timeout : 5000);

 if (arglist & CAM_ARG_ERR_RECOVER)
  ccb->ccb_h.flags |= CAM_PASS_ERR_RECOVER;


 ccb->ccb_h.flags |= CAM_DEV_QFRZDIS;

 if (((retval = cam_send_ccb(device, ccb)) < 0)
  || ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP)) {
  if (arglist & CAM_ARG_VERBOSE) {
   cam_error_print(device, ccb, CAM_ESF_ALL,
     CAM_EPF_ALL, stderr);
  }
  cam_freeccb(ccb);
  cam_close_device(device);

  if (retval < 0)
   err(1, "error sending mode select command");
  else
   errx(1, "error sending mode select command");

 }

 cam_freeccb(ccb);
}
