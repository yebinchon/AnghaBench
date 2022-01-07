
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int func_code; int flags; } ;
struct ccb_dev_advinfo {int bufsiz; int * buf; int buftype; int flags; TYPE_1__ ccb_h; } ;
union ccb {struct ccb_dev_advinfo cdai; } ;
typedef int uint8_t ;
struct mmc_params {char* model; int card_features; } ;
struct device_match_result {int target_lun; int target_id; int path_id; } ;
struct cam_device {int dummy; } ;


 int CAM_DIR_IN ;
 int CARD_FEATURE_SDIO ;
 int CDAI_FLAG_NONE ;
 int CDAI_TYPE_MMC_PARAMS ;
 int O_RDWR ;
 int XPT_DEV_ADVINFO ;
 int cam_close_device (struct cam_device*) ;
 int cam_errbuf ;
 int cam_freeccb (union ccb*) ;
 union ccb* cam_getccb (struct cam_device*) ;
 struct cam_device* cam_open_btl (int ,int ,int ,int ,int *) ;
 scalar_t__ cam_send_ccb (struct cam_device*,union ccb*) ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ strlen (char*) ;
 int warn (char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
print_dev_mmcsd(struct device_match_result *dev_result, char *tmpstr)
{
 union ccb *ccb;
 struct ccb_dev_advinfo *advi;
 struct cam_device *dev;
 struct mmc_params mmc_ident_data;

 dev = cam_open_btl(dev_result->path_id, dev_result->target_id,
     dev_result->target_lun, O_RDWR, ((void*)0));
 if (dev == ((void*)0)) {
  warnx("%s", cam_errbuf);
  return (1);
 }

 ccb = cam_getccb(dev);
 if (ccb == ((void*)0)) {
  warnx("couldn't allocate CCB");
  cam_close_device(dev);
  return (1);
 }

 advi = &ccb->cdai;
 advi->ccb_h.flags = CAM_DIR_IN;
 advi->ccb_h.func_code = XPT_DEV_ADVINFO;
 advi->flags = CDAI_FLAG_NONE;
 advi->buftype = CDAI_TYPE_MMC_PARAMS;
 advi->bufsiz = sizeof(struct mmc_params);
 advi->buf = (uint8_t *)&mmc_ident_data;

 if (cam_send_ccb(dev, ccb) < 0) {
  warn("error sending XPT_DEV_ADVINFO CCB");
  cam_freeccb(ccb);
  cam_close_device(dev);
  return (1);
 }

 if (strlen(mmc_ident_data.model) > 0) {
  sprintf(tmpstr, "<%s>", mmc_ident_data.model);
 } else {
  sprintf(tmpstr, "<%s card>",
      mmc_ident_data.card_features &
      CARD_FEATURE_SDIO ? "SDIO" : "unknown");
 }

 cam_freeccb(ccb);
 cam_close_device(dev);
 return (0);
}
