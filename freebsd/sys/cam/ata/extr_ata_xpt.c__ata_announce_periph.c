
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef int u_int ;
struct ccb_trans_settings_sata {int valid; int revision; } ;
struct ccb_trans_settings_pata {int valid; int mode; } ;
struct TYPE_3__ {struct ccb_trans_settings_sata sata; struct ccb_trans_settings_pata ata; } ;
struct TYPE_4__ {int status; int func_code; } ;
struct ccb_trans_settings {scalar_t__ transport; TYPE_1__ xport_specific; TYPE_2__ ccb_h; int type; } ;
struct ccb_pathinq {int base_transfer_speed; } ;
struct cam_periph {struct cam_path* path; } ;
struct cam_path {int dummy; } ;


 int CAM_PRIORITY_NORMAL ;
 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;
 int CTS_ATA_VALID_MODE ;
 int CTS_SATA_VALID_REVISION ;
 int CTS_TYPE_CURRENT_SETTINGS ;
 int MA_OWNED ;
 scalar_t__ XPORT_ATA ;
 scalar_t__ XPORT_SATA ;
 int XPT_GET_TRAN_SETTINGS ;
 int ata_mode2speed (int ) ;
 int ata_revision2speed (int ) ;
 int cam_periph_assert (struct cam_periph*,int ) ;
 int xpt_action (union ccb*) ;
 int xpt_path_inq (struct ccb_pathinq*,struct cam_path*) ;
 int xpt_setup_ccb (TYPE_2__*,struct cam_path*,int ) ;

__attribute__((used)) static void
_ata_announce_periph(struct cam_periph *periph, struct ccb_trans_settings *cts, u_int *speed)
{
 struct ccb_pathinq cpi;
 struct cam_path *path = periph->path;

 cam_periph_assert(periph, MA_OWNED);

 xpt_setup_ccb(&cts->ccb_h, path, CAM_PRIORITY_NORMAL);
 cts->ccb_h.func_code = XPT_GET_TRAN_SETTINGS;
 cts->type = CTS_TYPE_CURRENT_SETTINGS;
 xpt_action((union ccb*)cts);
 if ((cts->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP)
  return;

 xpt_path_inq(&cpi, path);

 *speed = cpi.base_transfer_speed;
 if (cts->transport == XPORT_ATA) {
  struct ccb_trans_settings_pata *pata =
      &cts->xport_specific.ata;

  if (pata->valid & CTS_ATA_VALID_MODE)
   *speed = ata_mode2speed(pata->mode);
 }
 if (cts->transport == XPORT_SATA) {
  struct ccb_trans_settings_sata *sata =
      &cts->xport_specific.sata;

  if (sata->valid & CTS_SATA_VALID_REVISION)
   *speed = ata_revision2speed(sata->revision);
 }
}
