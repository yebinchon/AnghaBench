
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct TYPE_5__ {int clock; } ;
struct TYPE_6__ {TYPE_1__ ios; } ;
struct TYPE_7__ {TYPE_2__ mmc; } ;
struct TYPE_8__ {int status; int func_code; } ;
struct ccb_trans_settings {TYPE_3__ proto_specific; TYPE_4__ ccb_h; int type; } ;
struct ccb_pathinq {int dummy; } ;
struct cam_periph {struct cam_path* path; } ;
struct cam_path {int dummy; } ;


 int CAM_DEBUG (struct cam_path*,int ,char*) ;
 int CAM_DEBUG_INFO ;
 int CAM_PRIORITY_NORMAL ;
 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;
 int CTS_TYPE_CURRENT_SETTINGS ;
 int MA_OWNED ;
 int XPT_GET_TRAN_SETTINGS ;
 int cam_periph_assert (struct cam_periph*,int ) ;
 int printf (char*,int) ;
 int xpt_action (union ccb*) ;
 int xpt_path_inq (struct ccb_pathinq*,struct cam_path*) ;
 int xpt_setup_ccb (TYPE_4__*,struct cam_path*,int ) ;

__attribute__((used)) static void
mmc_announce_periph(struct cam_periph *periph)
{
 struct ccb_pathinq cpi;
 struct ccb_trans_settings cts;
 struct cam_path *path = periph->path;

 cam_periph_assert(periph, MA_OWNED);

 CAM_DEBUG(periph->path, CAM_DEBUG_INFO,
    ("mmc_announce_periph: called\n"));

 xpt_setup_ccb(&cts.ccb_h, path, CAM_PRIORITY_NORMAL);
 cts.ccb_h.func_code = XPT_GET_TRAN_SETTINGS;
 cts.type = CTS_TYPE_CURRENT_SETTINGS;
 xpt_action((union ccb*)&cts);
 if ((cts.ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP)
  return;
 xpt_path_inq(&cpi, periph->path);
 printf("XPT info: CLK %04X, ...\n", cts.proto_specific.mmc.ios.clock);
}
