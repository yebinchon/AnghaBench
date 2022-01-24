#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int match_buf_len; unsigned int num_matches; scalar_t__ status; struct dev_match_result* matches; scalar_t__ pattern_buf_len; scalar_t__ num_patterns; } ;
struct TYPE_4__ {scalar_t__ status; int /*<<< orphan*/  func_code; int /*<<< orphan*/  target_lun; int /*<<< orphan*/  target_id; int /*<<< orphan*/  path_id; } ;
union ccb {TYPE_3__ cdm; TYPE_1__ ccb_h; } ;
typedef  int /*<<< orphan*/  uintmax_t ;
struct periph_match_result {char* periph_name; int /*<<< orphan*/  unit_number; } ;
struct device_match_result {int flags; int path_id; int target_id; int /*<<< orphan*/  target_lun; int /*<<< orphan*/  protocol; } ;
struct bus_match_result {int path_id; char* dev_name; int unit_number; int /*<<< orphan*/  bus_id; } ;
struct TYPE_5__ {struct periph_match_result periph_result; struct device_match_result device_result; struct bus_match_result bus_result; } ;
struct dev_match_result {int type; TYPE_2__ result; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAMIOCOMMAND ; 
 int CAM_ARG_VERBOSE ; 
 scalar_t__ CAM_DEV_MATCH_LAST ; 
 scalar_t__ CAM_DEV_MATCH_MORE ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  CAM_XPT_PATH_ID ; 
#define  DEV_MATCH_BUS 130 
#define  DEV_MATCH_DEVICE 129 
#define  DEV_MATCH_PERIPH 128 
 int DEV_RESULT_UNCONFIGURED ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  PROTO_ATA ; 
 int /*<<< orphan*/  PROTO_MMCSD ; 
 int /*<<< orphan*/  PROTO_NVME ; 
 int /*<<< orphan*/  PROTO_SATAPM ; 
 int /*<<< orphan*/  PROTO_SCSI ; 
 int /*<<< orphan*/  PROTO_SEMB ; 
 int /*<<< orphan*/  XPT_DEVICE ; 
 int /*<<< orphan*/  XPT_DEV_MATCH ; 
 int arglist ; 
 int /*<<< orphan*/  FUNC0 (union ccb*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int,char**,char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,union ccb*) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device_match_result*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_match_result*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct device_match_result*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct device_match_result*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct device_match_result*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 

__attribute__((used)) static int
FUNC15(int argc, char **argv, char *combinedopt)
{
	union ccb ccb;
	int bufsize, fd;
	unsigned int i;
	int need_close = 0;
	int error = 0;
	int skip_device = 0;
	int busonly = 0;
	int c;

	while ((c = FUNC3(argc, argv, combinedopt)) != -1) {
		switch(c) {
		case 'b':
			if ((arglist & CAM_ARG_VERBOSE) == 0)
				busonly = 1;
			break;
		default:
			break;
		}
	}

	if ((fd = FUNC6(XPT_DEVICE, O_RDWR)) == -1) {
		FUNC13("couldn't open %s", XPT_DEVICE);
		return (1);
	}

	FUNC0(&ccb, sizeof(union ccb));

	ccb.ccb_h.path_id = CAM_XPT_PATH_ID;
	ccb.ccb_h.target_id = CAM_TARGET_WILDCARD;
	ccb.ccb_h.target_lun = CAM_LUN_WILDCARD;

	ccb.ccb_h.func_code = XPT_DEV_MATCH;
	bufsize = sizeof(struct dev_match_result) * 100;
	ccb.cdm.match_buf_len = bufsize;
	ccb.cdm.matches = (struct dev_match_result *)FUNC5(bufsize);
	if (ccb.cdm.matches == NULL) {
		FUNC14("can't malloc memory for matches");
		FUNC1(fd);
		return (1);
	}
	ccb.cdm.num_matches = 0;

	/*
	 * We fetch all nodes, since we display most of them in the default
	 * case, and all in the verbose case.
	 */
	ccb.cdm.num_patterns = 0;
	ccb.cdm.pattern_buf_len = 0;

	/*
	 * We do the ioctl multiple times if necessary, in case there are
	 * more than 100 nodes in the EDT.
	 */
	do {
		if (FUNC4(fd, CAMIOCOMMAND, &ccb) == -1) {
			FUNC13("error sending CAMIOCOMMAND ioctl");
			error = 1;
			break;
		}

		if ((ccb.ccb_h.status != CAM_REQ_CMP)
		 || ((ccb.cdm.status != CAM_DEV_MATCH_LAST)
		    && (ccb.cdm.status != CAM_DEV_MATCH_MORE))) {
			FUNC14("got CAM error %#x, CDM error %d\n",
			      ccb.ccb_h.status, ccb.cdm.status);
			error = 1;
			break;
		}

		for (i = 0; i < ccb.cdm.num_matches; i++) {
			switch (ccb.cdm.matches[i].type) {
			case DEV_MATCH_BUS: {
				struct bus_match_result *bus_result;

				/*
				 * Only print the bus information if the
				 * user turns on the verbose flag.
				 */
				if ((busonly == 0) &&
				    (arglist & CAM_ARG_VERBOSE) == 0)
					break;

				bus_result =
					&ccb.cdm.matches[i].result.bus_result;

				if (need_close) {
					FUNC2(stdout, ")\n");
					need_close = 0;
				}

				FUNC2(stdout, "scbus%d on %s%d bus %d%s\n",
					bus_result->path_id,
					bus_result->dev_name,
					bus_result->unit_number,
					bus_result->bus_id,
					(busonly ? "" : ":"));
				break;
			}
			case DEV_MATCH_DEVICE: {
				struct device_match_result *dev_result;
				char tmpstr[256];

				if (busonly == 1)
					break;

				dev_result =
				     &ccb.cdm.matches[i].result.device_result;

				if ((dev_result->flags
				     & DEV_RESULT_UNCONFIGURED)
				 && ((arglist & CAM_ARG_VERBOSE) == 0)) {
					skip_device = 1;
					break;
				} else
					skip_device = 0;

				if (dev_result->protocol == PROTO_SCSI) {
					if (FUNC10(dev_result,
					    &tmpstr[0]) != 0) {
						skip_device = 1;
						break;
					}
				} else if (dev_result->protocol == PROTO_ATA ||
				    dev_result->protocol == PROTO_SATAPM) {
					if (FUNC7(dev_result,
					    &tmpstr[0]) != 0) {
						skip_device = 1;
						break;
					}
				} else if (dev_result->protocol == PROTO_MMCSD){
					if (FUNC8(dev_result,
					    &tmpstr[0]) != 0) {
						skip_device = 1;
						break;
					}
				} else if (dev_result->protocol == PROTO_SEMB) {
					if (FUNC11(dev_result,
					    &tmpstr[0]) != 0) {
						skip_device = 1;
						break;
					}
#ifdef WITH_NVME
				} else if (dev_result->protocol == PROTO_NVME) {
					if (print_dev_nvme(dev_result,
					    &tmpstr[0]) != 0) {
						skip_device = 1;
						break;
					}
#endif
				} else {
				    FUNC12(tmpstr, "<>");
				}
				if (need_close) {
					FUNC2(stdout, ")\n");
					need_close = 0;
				}

				FUNC2(stdout, "%-33s  at scbus%d "
					"target %d lun %jd (",
					tmpstr,
					dev_result->path_id,
					dev_result->target_id,
					(uintmax_t)dev_result->target_lun);

				need_close = 1;

				break;
			}
			case DEV_MATCH_PERIPH: {
				struct periph_match_result *periph_result;

				periph_result =
				      &ccb.cdm.matches[i].result.periph_result;

				if (busonly || skip_device != 0)
					break;

				if (need_close > 1)
					FUNC2(stdout, ",");

				FUNC2(stdout, "%s%d",
					periph_result->periph_name,
					periph_result->unit_number);

				need_close++;
				break;
			}
			default:
				FUNC2(stdout, "unknown match type\n");
				break;
			}
		}

	} while ((ccb.ccb_h.status == CAM_REQ_CMP)
		&& (ccb.cdm.status == CAM_DEV_MATCH_MORE));

	if (need_close)
		FUNC2(stdout, ")\n");

	FUNC1(fd);

	return (error);
}