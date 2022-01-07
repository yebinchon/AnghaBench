
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct ccb_trans_settings_spi {int valid; scalar_t__ sync_offset; int sync_period; } ;
struct TYPE_4__ {int func_code; } ;
struct TYPE_3__ {struct ccb_trans_settings_spi spi; } ;
struct ccb_trans_settings {scalar_t__ transport; void* type; TYPE_2__ ccb_h; TYPE_1__ xport_specific; } ;
struct cam_periph {int path; } ;
struct cam_ed {int flags; } ;
typedef int cts ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_PROBE ;
 int CAM_DEV_DV_HIT_BOTTOM ;
 int CAM_PRIORITY_NONE ;
 scalar_t__ CAM_REQ_CMP ;
 int CTS_SPI_VALID_SYNC_OFFSET ;
 int CTS_SPI_VALID_SYNC_RATE ;
 void* CTS_TYPE_CURRENT_SETTINGS ;
 scalar_t__ XPORT_SPI ;
 int XPT_GET_TRAN_SETTINGS ;
 int XPT_SET_TRAN_SETTINGS ;
 scalar_t__ bootverbose ;
 scalar_t__ cam_ccb_status (union ccb*) ;
 int memset (struct ccb_trans_settings*,int ,int) ;
 int printf (char*,int) ;
 int xpt_action (union ccb*) ;
 int xpt_print (int ,char*) ;
 int xpt_setup_ccb (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int
proberequestbackoff(struct cam_periph *periph, struct cam_ed *device)
{
 struct ccb_trans_settings cts;
 struct ccb_trans_settings_spi *spi;

 memset(&cts, 0, sizeof (cts));
 xpt_setup_ccb(&cts.ccb_h, periph->path, CAM_PRIORITY_NONE);
 cts.ccb_h.func_code = XPT_GET_TRAN_SETTINGS;
 cts.type = CTS_TYPE_CURRENT_SETTINGS;
 xpt_action((union ccb *)&cts);
 if (cam_ccb_status((union ccb *)&cts) != CAM_REQ_CMP) {
  if (bootverbose) {
   xpt_print(periph->path,
       "failed to get current device settings\n");
  }
  return (0);
 }
 if (cts.transport != XPORT_SPI) {
  if (bootverbose) {
   xpt_print(periph->path, "not SPI transport\n");
  }
  return (0);
 }
 spi = &cts.xport_specific.spi;




 if ((spi->valid & CTS_SPI_VALID_SYNC_RATE) == 0) {
  if (bootverbose) {
   xpt_print(periph->path, "no sync rate known\n");
  }
  return (0);
 }
 if ((spi->valid & CTS_SPI_VALID_SYNC_OFFSET) == 0
  || spi->sync_offset == 0 || spi->sync_period == 0) {
  if (bootverbose) {
   xpt_print(periph->path, "no sync rate available\n");
  }
  return (0);
 }

 if (device->flags & CAM_DEV_DV_HIT_BOTTOM) {
  CAM_DEBUG(periph->path, CAM_DEBUG_PROBE,
      ("hit async: giving up on DV\n"));
  return (0);
 }
 spi->valid = CTS_SPI_VALID_SYNC_RATE | CTS_SPI_VALID_SYNC_OFFSET;
 for (;;) {
  spi->sync_period++;
  if (spi->sync_period >= 0xf) {
   spi->sync_period = 0;
   spi->sync_offset = 0;
   CAM_DEBUG(periph->path, CAM_DEBUG_PROBE,
       ("setting to async for DV\n"));




   device->flags |= CAM_DEV_DV_HIT_BOTTOM;
  } else if (bootverbose) {
   CAM_DEBUG(periph->path, CAM_DEBUG_PROBE,
       ("DV: period 0x%x\n", spi->sync_period));
   printf("setting period to 0x%x\n", spi->sync_period);
  }
  cts.ccb_h.func_code = XPT_SET_TRAN_SETTINGS;
  cts.type = CTS_TYPE_CURRENT_SETTINGS;
  xpt_action((union ccb *)&cts);
  if (cam_ccb_status((union ccb *)&cts) != CAM_REQ_CMP) {
   break;
  }
  CAM_DEBUG(periph->path, CAM_DEBUG_PROBE,
      ("DV: failed to set period 0x%x\n", spi->sync_period));
  if (spi->sync_period == 0) {
   return (0);
  }
 }
 return (1);
}
