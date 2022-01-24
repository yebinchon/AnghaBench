#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct scsi_inquiry_data {int dummy; } ;
struct dev_match_result {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/ * periph; struct cam_ed* device; TYPE_2__* target; struct cam_eb* bus; } ;
struct TYPE_14__ {int position_type; scalar_t__* generations; TYPE_1__ cookie; } ;
struct ccb_dev_match {int match_buf_len; int num_matches; TYPE_7__ pos; int /*<<< orphan*/  status; TYPE_5__* matches; int /*<<< orphan*/  num_patterns; int /*<<< orphan*/  patterns; } ;
struct cam_periph {int /*<<< orphan*/  refcount; } ;
struct cam_ed {int flags; scalar_t__ generation; TYPE_2__* target; int /*<<< orphan*/  ident_data; int /*<<< orphan*/  inq_data; int /*<<< orphan*/  protocol; int /*<<< orphan*/  lun_id; } ;
struct cam_eb {scalar_t__ generation; int /*<<< orphan*/  eb_mtx; int /*<<< orphan*/  path_id; } ;
struct ata_params {int dummy; } ;
typedef  int dev_match_ret ;
struct TYPE_13__ {scalar_t__ bus_generation; } ;
struct TYPE_10__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  ident_data; int /*<<< orphan*/  inq_data; int /*<<< orphan*/  protocol; int /*<<< orphan*/  target_lun; int /*<<< orphan*/  target_id; int /*<<< orphan*/  path_id; } ;
struct TYPE_11__ {TYPE_3__ device_result; } ;
struct TYPE_12__ {TYPE_4__ result; int /*<<< orphan*/  type; } ;
struct TYPE_9__ {scalar_t__ generation; int /*<<< orphan*/  target_id; struct cam_eb* bus; } ;

/* Variables and functions */
 size_t CAM_BUS_GENERATION ; 
 size_t CAM_DEV_GENERATION ; 
 int /*<<< orphan*/  CAM_DEV_MATCH_ERROR ; 
 int /*<<< orphan*/  CAM_DEV_MATCH_LIST_CHANGED ; 
 int /*<<< orphan*/  CAM_DEV_MATCH_MORE ; 
 int CAM_DEV_POS_BUS ; 
 int CAM_DEV_POS_DEVICE ; 
 int CAM_DEV_POS_EDT ; 
 int CAM_DEV_POS_PERIPH ; 
 int CAM_DEV_POS_TARGET ; 
 int CAM_DEV_UNCONFIGURED ; 
 size_t CAM_PERIPH_GENERATION ; 
 size_t CAM_TARGET_GENERATION ; 
 int /*<<< orphan*/  DEV_MATCH_DEVICE ; 
 int /*<<< orphan*/  DEV_RESULT_NOFLAG ; 
 int /*<<< orphan*/  DEV_RESULT_UNCONFIGURED ; 
 int DM_RET_ACTION_MASK ; 
 int DM_RET_COPY ; 
 int DM_RET_DESCEND ; 
 int DM_RET_ERROR ; 
 int DM_RET_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cam_ed*) ; 
 int /*<<< orphan*/  xptedtperiphfunc ; 
 int FUNC7 (struct cam_ed*,struct cam_periph*,int /*<<< orphan*/ ,void*) ; 
 TYPE_6__ xsoftc ; 

__attribute__((used)) static int
FUNC8(struct cam_ed *device, void *arg)
{
	struct cam_eb *bus;
	struct cam_periph *periph;
	struct ccb_dev_match *cdm;
	dev_match_ret retval;

	cdm = (struct ccb_dev_match *)arg;
	bus = device->target->bus;

	/*
	 * If our position is for something deeper in the tree, that means
	 * that we've already seen this node.  So, we keep going down.
	 */
	if ((cdm->pos.position_type & CAM_DEV_POS_DEVICE)
	 && (cdm->pos.cookie.device == device)
	 && (cdm->pos.position_type & CAM_DEV_POS_PERIPH)
	 && (cdm->pos.cookie.periph != NULL))
		retval = DM_RET_DESCEND;
	else
		retval = FUNC6(cdm->patterns, cdm->num_patterns,
					device);

	if ((retval & DM_RET_ACTION_MASK) == DM_RET_ERROR) {
		cdm->status = CAM_DEV_MATCH_ERROR;
		return(0);
	}

	/*
	 * If the copy flag is set, copy this device out.
	 */
	if (retval & DM_RET_COPY) {
		int spaceleft, j;

		spaceleft = cdm->match_buf_len - (cdm->num_matches *
			sizeof(struct dev_match_result));

		/*
		 * If we don't have enough space to put in another
		 * match result, save our position and tell the
		 * user there are more devices to check.
		 */
		if (spaceleft < sizeof(struct dev_match_result)) {
			FUNC1(&cdm->pos, sizeof(cdm->pos));
			cdm->pos.position_type =
				CAM_DEV_POS_EDT | CAM_DEV_POS_BUS |
				CAM_DEV_POS_TARGET | CAM_DEV_POS_DEVICE;

			cdm->pos.cookie.bus = device->target->bus;
			cdm->pos.generations[CAM_BUS_GENERATION]=
				xsoftc.bus_generation;
			cdm->pos.cookie.target = device->target;
			cdm->pos.generations[CAM_TARGET_GENERATION] =
				device->target->bus->generation;
			cdm->pos.cookie.device = device;
			cdm->pos.generations[CAM_DEV_GENERATION] =
				device->target->generation;
			cdm->status = CAM_DEV_MATCH_MORE;
			return(0);
		}
		j = cdm->num_matches;
		cdm->num_matches++;
		cdm->matches[j].type = DEV_MATCH_DEVICE;
		cdm->matches[j].result.device_result.path_id =
			device->target->bus->path_id;
		cdm->matches[j].result.device_result.target_id =
			device->target->target_id;
		cdm->matches[j].result.device_result.target_lun =
			device->lun_id;
		cdm->matches[j].result.device_result.protocol =
			device->protocol;
		FUNC0(&device->inq_data,
		      &cdm->matches[j].result.device_result.inq_data,
		      sizeof(struct scsi_inquiry_data));
		FUNC0(&device->ident_data,
		      &cdm->matches[j].result.device_result.ident_data,
		      sizeof(struct ata_params));

		/* Let the user know whether this device is unconfigured */
		if (device->flags & CAM_DEV_UNCONFIGURED)
			cdm->matches[j].result.device_result.flags =
				DEV_RESULT_UNCONFIGURED;
		else
			cdm->matches[j].result.device_result.flags =
				DEV_RESULT_NOFLAG;
	}

	/*
	 * If the user isn't interested in peripherals, don't descend
	 * the tree any further.
	 */
	if ((retval & DM_RET_ACTION_MASK) == DM_RET_STOP)
		return(1);

	/*
	 * If there is a peripheral list generation recorded, make sure
	 * it hasn't changed.
	 */
	FUNC4();
	FUNC2(&bus->eb_mtx);
	if ((cdm->pos.position_type & CAM_DEV_POS_BUS)
	 && (cdm->pos.cookie.bus == bus)
	 && (cdm->pos.position_type & CAM_DEV_POS_TARGET)
	 && (cdm->pos.cookie.target == device->target)
	 && (cdm->pos.position_type & CAM_DEV_POS_DEVICE)
	 && (cdm->pos.cookie.device == device)
	 && (cdm->pos.position_type & CAM_DEV_POS_PERIPH)
	 && (cdm->pos.cookie.periph != NULL)) {
		if (cdm->pos.generations[CAM_PERIPH_GENERATION] !=
		    device->generation) {
			FUNC3(&bus->eb_mtx);
			FUNC5();
			cdm->status = CAM_DEV_MATCH_LIST_CHANGED;
			return(0);
		}
		periph = (struct cam_periph *)cdm->pos.cookie.periph;
		periph->refcount++;
	} else
		periph = NULL;
	FUNC3(&bus->eb_mtx);
	FUNC5();

	return (FUNC7(device, periph, xptedtperiphfunc, arg));
}