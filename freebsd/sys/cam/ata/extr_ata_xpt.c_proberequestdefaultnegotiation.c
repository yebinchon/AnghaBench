
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct TYPE_4__ {int status; int func_code; } ;
struct TYPE_3__ {scalar_t__ valid; } ;
struct ccb_trans_settings {int type; TYPE_2__ ccb_h; TYPE_1__ xport_specific; } ;
struct cam_periph {int path; } ;


 int CAM_PRIORITY_NONE ;
 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;
 int CTS_TYPE_CURRENT_SETTINGS ;
 int CTS_TYPE_USER_SETTINGS ;
 int XPT_GET_TRAN_SETTINGS ;
 int XPT_SET_TRAN_SETTINGS ;
 int xpt_action (union ccb*) ;
 int xpt_setup_ccb (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void
proberequestdefaultnegotiation(struct cam_periph *periph)
{
 struct ccb_trans_settings cts;

 xpt_setup_ccb(&cts.ccb_h, periph->path, CAM_PRIORITY_NONE);
 cts.ccb_h.func_code = XPT_GET_TRAN_SETTINGS;
 cts.type = CTS_TYPE_USER_SETTINGS;
 xpt_action((union ccb *)&cts);
 if ((cts.ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP)
  return;
 cts.xport_specific.valid = 0;
 cts.ccb_h.func_code = XPT_SET_TRAN_SETTINGS;
 cts.type = CTS_TYPE_CURRENT_SETTINGS;
 xpt_action((union ccb *)&cts);
}
