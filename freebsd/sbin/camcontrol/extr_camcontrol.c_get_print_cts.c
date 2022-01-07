
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int type; } ;
struct TYPE_5__ {int status; int func_code; } ;
union ccb {TYPE_2__ cts; TYPE_1__ ccb_h; } ;
struct ccb_trans_settings {int dummy; } ;
struct cam_device {int dummy; } ;


 int CAM_ARG_VERBOSE ;
 int CAM_EPF_ALL ;
 int CAM_ESF_ALL ;
 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;
 int CCB_CLEAR_ALL_EXCEPT_HDR (TYPE_2__*) ;
 int CTS_TYPE_CURRENT_SETTINGS ;
 int CTS_TYPE_USER_SETTINGS ;
 int XPT_GET_TRAN_SETTINGS ;
 int arglist ;
 int bcopy (TYPE_2__*,struct ccb_trans_settings*,int) ;
 int cam_error_print (struct cam_device*,union ccb*,int ,int ,int ) ;
 int cam_freeccb (union ccb*) ;
 union ccb* cam_getccb (struct cam_device*) ;
 scalar_t__ cam_send_ccb (struct cam_device*,union ccb*) ;
 int cts_print (struct cam_device*,TYPE_2__*) ;
 int stderr ;
 int warn (char*) ;
 int warnx (char*) ;

__attribute__((used)) static int
get_print_cts(struct cam_device *device, int user_settings, int quiet,
       struct ccb_trans_settings *cts)
{
 int retval;
 union ccb *ccb;

 retval = 0;
 ccb = cam_getccb(device);

 if (ccb == ((void*)0)) {
  warnx("get_print_cts: error allocating ccb");
  return (1);
 }

 CCB_CLEAR_ALL_EXCEPT_HDR(&ccb->cts);

 ccb->ccb_h.func_code = XPT_GET_TRAN_SETTINGS;

 if (user_settings == 0)
  ccb->cts.type = CTS_TYPE_CURRENT_SETTINGS;
 else
  ccb->cts.type = CTS_TYPE_USER_SETTINGS;

 if (cam_send_ccb(device, ccb) < 0) {
  warn("error sending XPT_GET_TRAN_SETTINGS CCB");
  retval = 1;
  goto get_print_cts_bailout;
 }

 if ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) {
  warnx("XPT_GET_TRANS_SETTINGS CCB failed");
  if (arglist & CAM_ARG_VERBOSE)
   cam_error_print(device, ccb, CAM_ESF_ALL,
     CAM_EPF_ALL, stderr);
  retval = 1;
  goto get_print_cts_bailout;
 }

 if (quiet == 0)
  cts_print(device, &ccb->cts);

 if (cts != ((void*)0))
  bcopy(&ccb->cts, cts, sizeof(struct ccb_trans_settings));

get_print_cts_bailout:

 cam_freeccb(ccb);

 return (retval);
}
