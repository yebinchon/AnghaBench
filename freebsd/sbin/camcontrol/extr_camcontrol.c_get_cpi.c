
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int func_code; } ;
union ccb {int cpi; TYPE_1__ ccb_h; } ;
struct ccb_pathinq {int dummy; } ;
struct cam_device {int dummy; } ;


 int CAM_ARG_VERBOSE ;
 int CAM_EPF_ALL ;
 int CAM_ESF_ALL ;
 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;
 int CCB_CLEAR_ALL_EXCEPT_HDR (int *) ;
 int XPT_PATH_INQ ;
 int arglist ;
 int bcopy (int *,struct ccb_pathinq*,int) ;
 int cam_error_print (struct cam_device*,union ccb*,int ,int ,int ) ;
 int cam_freeccb (union ccb*) ;
 union ccb* cam_getccb (struct cam_device*) ;
 scalar_t__ cam_send_ccb (struct cam_device*,union ccb*) ;
 int stderr ;
 int warn (char*) ;
 int warnx (char*) ;

__attribute__((used)) static int
get_cpi(struct cam_device *device, struct ccb_pathinq *cpi)
{
 union ccb *ccb;
 int retval = 0;

 ccb = cam_getccb(device);
 if (ccb == ((void*)0)) {
  warnx("get_cpi: couldn't allocate CCB");
  return (1);
 }
 CCB_CLEAR_ALL_EXCEPT_HDR(&ccb->cpi);
 ccb->ccb_h.func_code = XPT_PATH_INQ;
 if (cam_send_ccb(device, ccb) < 0) {
  warn("get_cpi: error sending Path Inquiry CCB");
  retval = 1;
  goto get_cpi_bailout;
 }
 if ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) {
  if (arglist & CAM_ARG_VERBOSE)
   cam_error_print(device, ccb, CAM_ESF_ALL,
     CAM_EPF_ALL, stderr);
  retval = 1;
  goto get_cpi_bailout;
 }
 bcopy(&ccb->cpi, cpi, sizeof(struct ccb_pathinq));

get_cpi_bailout:
 cam_freeccb(ccb);
 return (retval);
}
