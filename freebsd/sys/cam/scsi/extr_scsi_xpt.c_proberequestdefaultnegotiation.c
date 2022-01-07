
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct TYPE_2__ {int func_code; } ;
struct ccb_trans_settings {int type; TYPE_1__ ccb_h; } ;
struct cam_periph {int path; } ;


 int CAM_PRIORITY_NONE ;
 scalar_t__ CAM_REQ_CMP ;
 int CTS_TYPE_CURRENT_SETTINGS ;
 int CTS_TYPE_USER_SETTINGS ;
 int XPT_GET_TRAN_SETTINGS ;
 int XPT_SET_TRAN_SETTINGS ;
 scalar_t__ cam_ccb_status (union ccb*) ;
 int xpt_action (union ccb*) ;
 int xpt_setup_ccb (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void
proberequestdefaultnegotiation(struct cam_periph *periph)
{
 struct ccb_trans_settings cts;

 xpt_setup_ccb(&cts.ccb_h, periph->path, CAM_PRIORITY_NONE);
 cts.ccb_h.func_code = XPT_GET_TRAN_SETTINGS;
 cts.type = CTS_TYPE_USER_SETTINGS;
 xpt_action((union ccb *)&cts);
 if (cam_ccb_status((union ccb *)&cts) != CAM_REQ_CMP) {
  return;
 }
 cts.ccb_h.func_code = XPT_SET_TRAN_SETTINGS;
 cts.type = CTS_TYPE_CURRENT_SETTINGS;
 xpt_action((union ccb *)&cts);
}
