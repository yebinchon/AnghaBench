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
typedef  union ccb {int dummy; } ccb ;
struct scsi_sense_data_fixed {int /*<<< orphan*/  add_sense_code_qual; int /*<<< orphan*/  add_sense_code; int /*<<< orphan*/  flags; } ;
struct ctio_descr {scalar_t__ offset; struct ccb_accept_tio* atio; } ;
struct TYPE_4__ {int flags; scalar_t__ targ_descr; } ;
struct ccb_scsiio {int /*<<< orphan*/  init_id; TYPE_1__ ccb_h; int /*<<< orphan*/  tag_id; } ;
struct TYPE_6__ {int status; scalar_t__ targ_descr; } ;
struct ccb_accept_tio {int sense_len; TYPE_3__ ccb_h; int /*<<< orphan*/  sense_data; int /*<<< orphan*/  init_id; int /*<<< orphan*/  tag_id; } ;
struct atio_descr {int flags; scalar_t__ base_off; scalar_t__ init_req; scalar_t__ targ_req; } ;
typedef  int cam_status ;
struct TYPE_5__ {int /*<<< orphan*/  tqe; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATIO_WORK ; 
#define  CAM_CDB_RECVD 129 
 int CAM_DIR_IN ; 
 int CAM_DIR_MASK ; 
 int CAM_DIR_OUT ; 
#define  CAM_REQ_ABORTED 128 
 int CAM_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ debug ; 
 struct ccb_scsiio* FUNC2 () ; 
 TYPE_2__ periph_links ; 
 int /*<<< orphan*/  FUNC3 (union ccb*,int) ; 
 int FUNC4 (struct ccb_accept_tio*,struct ccb_scsiio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct ccb_scsiio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct atio_descr*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  work_queue ; 

int
FUNC8(struct ccb_accept_tio *atio)
{
	struct ccb_scsiio *ctio;
	struct atio_descr *a_descr;
	struct ctio_descr *c_descr;
	cam_status status;
	int ret;

	if (debug)
		FUNC7("Working on ATIO %p", atio);

	a_descr = (struct atio_descr *)atio->ccb_h.targ_descr;

	/* Get a CTIO and initialize it according to our known parameters */
	ctio = FUNC2();
	if (ctio == NULL) {
		return (1);
	}
	ret = 0;
	ctio->ccb_h.flags = a_descr->flags;
	ctio->tag_id = atio->tag_id;
	ctio->init_id = atio->init_id;
	/* XXX priority needs to be added to a_descr */
	c_descr = (struct ctio_descr *)ctio->ccb_h.targ_descr;
	c_descr->atio = atio;
	if ((a_descr->flags & CAM_DIR_IN) != 0)
		c_descr->offset = a_descr->base_off + a_descr->targ_req;
	else if ((a_descr->flags & CAM_DIR_MASK) == CAM_DIR_OUT)
		c_descr->offset = a_descr->base_off + a_descr->init_req;
	else
		c_descr->offset = a_descr->base_off;

	/* 
	 * Return a check condition if there was an error while
	 * receiving this ATIO.
	 */
	if (atio->sense_len != 0) {
		struct scsi_sense_data_fixed *sense;

		if (debug) {
			FUNC7("ATIO with %u bytes sense received",
			      atio->sense_len);
		}
		sense = (struct scsi_sense_data_fixed *)&atio->sense_data;
		FUNC5(ctio->init_id, ctio, sense->flags,
			   sense->add_sense_code, sense->add_sense_code_qual);
		FUNC3((union ccb *)ctio, /*priority*/1);
		return (0);
	}

	status = atio->ccb_h.status & CAM_STATUS_MASK;
	switch (status) {
	case CAM_CDB_RECVD:
		ret = FUNC4(atio, ctio, ATIO_WORK);
		break;
	case CAM_REQ_ABORTED:
		FUNC6("ATIO %p aborted", a_descr);
		/* Requeue on HBA */
		FUNC0(&work_queue, &atio->ccb_h, periph_links.tqe);
		FUNC3((union ccb *)atio, /*priority*/1);
		ret = 1;
		break;
	default:
		FUNC7("ATIO completed with unhandled status %#x", status);
		FUNC1();
		/* NOTREACHED */
		break;
	}

	return (ret);
}