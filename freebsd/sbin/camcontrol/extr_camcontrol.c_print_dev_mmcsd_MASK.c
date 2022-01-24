#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  func_code; int /*<<< orphan*/  flags; } ;
struct ccb_dev_advinfo {int bufsiz; int /*<<< orphan*/ * buf; int /*<<< orphan*/  buftype; int /*<<< orphan*/  flags; TYPE_1__ ccb_h; } ;
union ccb {struct ccb_dev_advinfo cdai; } ;
typedef  int /*<<< orphan*/  uint8_t ;
struct mmc_params {char* model; int card_features; } ;
struct device_match_result {int /*<<< orphan*/  target_lun; int /*<<< orphan*/  target_id; int /*<<< orphan*/  path_id; } ;
struct cam_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_DIR_IN ; 
 int CARD_FEATURE_SDIO ; 
 int /*<<< orphan*/  CDAI_FLAG_NONE ; 
 int /*<<< orphan*/  CDAI_TYPE_MMC_PARAMS ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  XPT_DEV_ADVINFO ; 
 int /*<<< orphan*/  FUNC0 (struct cam_device*) ; 
 int /*<<< orphan*/  cam_errbuf ; 
 int /*<<< orphan*/  FUNC1 (union ccb*) ; 
 union ccb* FUNC2 (struct cam_device*) ; 
 struct cam_device* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct cam_device*,union ccb*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static int
FUNC9(struct device_match_result *dev_result, char *tmpstr)
{
	union ccb *ccb;
	struct ccb_dev_advinfo *advi;
	struct cam_device *dev;
	struct mmc_params mmc_ident_data;

	dev = FUNC3(dev_result->path_id, dev_result->target_id,
	    dev_result->target_lun, O_RDWR, NULL);
	if (dev == NULL) {
		FUNC8("%s", cam_errbuf);
		return (1);
	}

	ccb = FUNC2(dev);
	if (ccb == NULL) {
		FUNC8("couldn't allocate CCB");
		FUNC0(dev);
		return (1);
	}

	advi = &ccb->cdai;
	advi->ccb_h.flags = CAM_DIR_IN;
	advi->ccb_h.func_code = XPT_DEV_ADVINFO;
	advi->flags = CDAI_FLAG_NONE;
	advi->buftype = CDAI_TYPE_MMC_PARAMS;
	advi->bufsiz = sizeof(struct mmc_params);
	advi->buf = (uint8_t *)&mmc_ident_data;

	if (FUNC4(dev, ccb) < 0) {
		FUNC7("error sending XPT_DEV_ADVINFO CCB");
		FUNC1(ccb);
		FUNC0(dev);
		return (1);
	}

	if (FUNC6(mmc_ident_data.model) > 0) {
		FUNC5(tmpstr, "<%s>", mmc_ident_data.model);
	} else {
		FUNC5(tmpstr, "<%s card>",
		    mmc_ident_data.card_features &
		    CARD_FEATURE_SDIO ? "SDIO" : "unknown");
	}

	FUNC1(ccb);
	FUNC0(dev);
	return (0);
}