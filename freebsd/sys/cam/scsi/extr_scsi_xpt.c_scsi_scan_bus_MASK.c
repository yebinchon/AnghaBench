#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  flags; } ;
struct TYPE_17__ {int /*<<< orphan*/  priority; } ;
struct TYPE_20__ {int func_code; int status; size_t target_id; void (* cbfcnp ) (struct cam_periph*,union ccb*) ;TYPE_6__* ppriv_ptr0; int /*<<< orphan*/  flags; TYPE_4__ pinfo; int /*<<< orphan*/  path_id; struct cam_path* path; int /*<<< orphan*/  target_lun; } ;
struct TYPE_16__ {int hba_misc; int hba_inquiry; int max_target; size_t initiator_id; int /*<<< orphan*/  max_lun; } ;
union ccb {TYPE_5__ crcn; TYPE_7__ ccb_h; TYPE_3__ cpi; } ;
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  size_t u_int ;
typedef  size_t target_id_t ;
struct mtx {int dummy; } ;
struct cam_periph {int dummy; } ;
struct cam_path {struct cam_ed* device; struct cam_et* target; TYPE_1__* bus; } ;
struct cam_et {TYPE_2__* bus; struct mtx luns_mtx; TYPE_10__* luns; } ;
struct cam_ed {int flags; } ;
struct TYPE_19__ {size_t counter; size_t* lunindex; union ccb* request_ccb; TYPE_3__* cpi; } ;
typedef  TYPE_6__ scsi_scan_bus_info ;
typedef  int /*<<< orphan*/  path_id_t ;
typedef  int /*<<< orphan*/  lun_id_t ;
typedef  int cam_status ;
struct TYPE_21__ {int quirks; } ;
struct TYPE_15__ {struct mtx eb_mtx; } ;
struct TYPE_14__ {int /*<<< orphan*/  last_reset; } ;
struct TYPE_13__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_10__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_path*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_PROBE ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 int CAM_DEV_INQUIRY_DATA_VALID ; 
 int CAM_DEV_UNCONFIGURED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_10__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_10__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CAM_PRIORITY_NONE ; 
 int CAM_QUIRK_NOLUNS ; 
 int CAM_REQ_CMP ; 
 void* CAM_RESRC_UNAVAIL ; 
 int /*<<< orphan*/  CAM_SCSI2_MAXLUN ; 
 int /*<<< orphan*/  CAM_UNLOCKED ; 
 int /*<<< orphan*/  FUNC4 (struct cam_ed*) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_ed*) ; 
 int /*<<< orphan*/  M_CAMXPT ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int PIM_EXTLUNS ; 
 int PIM_NOBUSRESET ; 
 int PIM_NOINITIATOR ; 
 int PIM_SEQSCAN ; 
 int PI_SDTR_ABLE ; 
 int PI_WIDE_16 ; 
 int PI_WIDE_32 ; 
 TYPE_9__* FUNC6 (struct cam_ed*) ; 
 struct cam_ed* FUNC7 (struct cam_ed*,int /*<<< orphan*/ ) ; 
 int XPT_PATH_INQ ; 
 int XPT_RESET_BUS ; 
#define  XPT_SCAN_BUS 130 
#define  XPT_SCAN_LUN 129 
#define  XPT_SCAN_TGT 128 
 int FUNC8 (union ccb*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC12 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (union ccb*) ; 
 union ccb* FUNC17 () ; 
 int FUNC18 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (union ccb*) ; 
 int /*<<< orphan*/  FUNC20 (union ccb*) ; 
 int /*<<< orphan*/  FUNC21 (struct cam_path*) ; 
 struct mtx* FUNC22 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_7__*,struct cam_path*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC24(struct cam_periph *periph, union ccb *request_ccb)
{
	struct mtx *mtx;

	FUNC1(request_ccb->ccb_h.path, CAM_DEBUG_TRACE,
		  ("scsi_scan_bus\n"));
	switch (request_ccb->ccb_h.func_code) {
	case XPT_SCAN_BUS:
	case XPT_SCAN_TGT:
	{
		scsi_scan_bus_info *scan_info;
		union	ccb *work_ccb, *reset_ccb;
		struct	cam_path *path;
		u_int	i;
		u_int	low_target, max_target;
		u_int	initiator_id;

		/* Find out the characteristics of the bus */
		work_ccb = FUNC17();
		if (work_ccb == NULL) {
			request_ccb->ccb_h.status = CAM_RESRC_UNAVAIL;
			FUNC19(request_ccb);
			return;
		}
		FUNC23(&work_ccb->ccb_h, request_ccb->ccb_h.path,
			      request_ccb->ccb_h.pinfo.priority);
		work_ccb->ccb_h.func_code = XPT_PATH_INQ;
		FUNC16(work_ccb);
		if (work_ccb->ccb_h.status != CAM_REQ_CMP) {
			request_ccb->ccb_h.status = work_ccb->ccb_h.status;
			FUNC20(work_ccb);
			FUNC19(request_ccb);
			return;
		}

		if ((work_ccb->cpi.hba_misc & PIM_NOINITIATOR) != 0) {
			/*
			 * Can't scan the bus on an adapter that
			 * cannot perform the initiator role.
			 */
			request_ccb->ccb_h.status = CAM_REQ_CMP;
			FUNC20(work_ccb);
			FUNC19(request_ccb);
			return;
		}

		/* We may need to reset bus first, if we haven't done it yet. */
		if ((work_ccb->cpi.hba_inquiry &
		    (PI_WIDE_32|PI_WIDE_16|PI_SDTR_ABLE)) &&
		    !(work_ccb->cpi.hba_misc & PIM_NOBUSRESET) &&
		    !FUNC15(&request_ccb->ccb_h.path->bus->last_reset) &&
		    (reset_ccb = FUNC17()) != NULL) {
			FUNC23(&reset_ccb->ccb_h, request_ccb->ccb_h.path,
			      CAM_PRIORITY_NONE);
			reset_ccb->ccb_h.func_code = XPT_RESET_BUS;
			FUNC16(reset_ccb);
			if (reset_ccb->ccb_h.status != CAM_REQ_CMP) {
				request_ccb->ccb_h.status = reset_ccb->ccb_h.status;
				FUNC20(reset_ccb);
				FUNC20(work_ccb);
				FUNC19(request_ccb);
				return;
			}
			FUNC20(reset_ccb);
		}

		/* Save some state for use while we probe for devices */
		scan_info = (scsi_scan_bus_info *) FUNC10(sizeof(scsi_scan_bus_info) +
		    (work_ccb->cpi.max_target * sizeof (u_int)), M_CAMXPT, M_ZERO|M_NOWAIT);
		if (scan_info == NULL) {
			request_ccb->ccb_h.status = CAM_RESRC_UNAVAIL;
			FUNC20(work_ccb);
			FUNC19(request_ccb);
			return;
		}
		FUNC1(request_ccb->ccb_h.path, CAM_DEBUG_TRACE,
		   ("SCAN start for %p\n", scan_info));
		scan_info->request_ccb = request_ccb;
		scan_info->cpi = &work_ccb->cpi;

		/* Cache on our stack so we can work asynchronously */
		max_target = scan_info->cpi->max_target;
		low_target = 0;
		initiator_id = scan_info->cpi->initiator_id;


		/*
		 * We can scan all targets in parallel, or do it sequentially.
		 */

		if (request_ccb->ccb_h.func_code == XPT_SCAN_TGT) {
			max_target = low_target = request_ccb->ccb_h.target_id;
			scan_info->counter = 0;
		} else if (scan_info->cpi->hba_misc & PIM_SEQSCAN) {
			max_target = 0;
			scan_info->counter = 0;
		} else {
			scan_info->counter = scan_info->cpi->max_target + 1;
			if (scan_info->cpi->initiator_id < scan_info->counter) {
				scan_info->counter--;
			}
		}
		mtx = FUNC22(scan_info->request_ccb->ccb_h.path);
		FUNC12(mtx);

		for (i = low_target; i <= max_target; i++) {
			cam_status status;
			if (i == initiator_id)
				continue;

			status = FUNC18(&path, NULL,
						 request_ccb->ccb_h.path_id,
						 i, 0);
			if (status != CAM_REQ_CMP) {
				FUNC13("scsi_scan_bus: xpt_create_path failed"
				       " with status %#x, bus scan halted\n",
				       status);
				FUNC9(scan_info, M_CAMXPT);
				request_ccb->ccb_h.status = status;
				FUNC20(work_ccb);
				FUNC19(request_ccb);
				break;
			}
			work_ccb = FUNC17();
			if (work_ccb == NULL) {
				FUNC20((union ccb *)scan_info->cpi);
				FUNC9(scan_info, M_CAMXPT);
				FUNC21(path);
				request_ccb->ccb_h.status = CAM_RESRC_UNAVAIL;
				FUNC19(request_ccb);
				break;
			}
			FUNC23(&work_ccb->ccb_h, path,
				      request_ccb->ccb_h.pinfo.priority);
			work_ccb->ccb_h.func_code = XPT_SCAN_LUN;
			work_ccb->ccb_h.cbfcnp = scsi_scan_bus;
			work_ccb->ccb_h.flags |= CAM_UNLOCKED;
			work_ccb->ccb_h.ppriv_ptr0 = scan_info;
			work_ccb->crcn.flags = request_ccb->crcn.flags;
			FUNC16(work_ccb);
		}

		FUNC11(mtx);
		break;
	}
	case XPT_SCAN_LUN:
	{
		cam_status status;
		struct cam_path *path, *oldpath;
		scsi_scan_bus_info *scan_info;
		struct cam_et *target;
		struct cam_ed *device, *nextdev;
		int next_target;
		path_id_t path_id;
		target_id_t target_id;
		lun_id_t lun_id;

		oldpath = request_ccb->ccb_h.path;

		status = FUNC8(request_ccb);
		scan_info = (scsi_scan_bus_info *)request_ccb->ccb_h.ppriv_ptr0;
		path_id = request_ccb->ccb_h.path_id;
		target_id = request_ccb->ccb_h.target_id;
		lun_id = request_ccb->ccb_h.target_lun;
		target = request_ccb->ccb_h.path->target;
		next_target = 1;

		mtx = FUNC22(scan_info->request_ccb->ccb_h.path);
		FUNC11(mtx);
		FUNC11(&target->luns_mtx);
		if (target->luns) {
			lun_id_t first;
			u_int nluns = FUNC14(target->luns->length) / 8;

			/*
			 * Make sure we skip over lun 0 if it's the first member
			 * of the list as we've actually just finished probing
			 * it.
			 */
			FUNC2(target->luns, 0, first);
			if (first == 0 && scan_info->lunindex[target_id] == 0) {
				scan_info->lunindex[target_id]++;
			}

			/*
			 * Skip any LUNs that the HBA can't deal with.
			 */
			while (scan_info->lunindex[target_id] < nluns) {
				if (scan_info->cpi->hba_misc & PIM_EXTLUNS) {
					FUNC2(target->luns,
					    scan_info->lunindex[target_id],
					    lun_id);
					break;
				}

				if (FUNC0(target->luns,
				    scan_info->lunindex[target_id])) {
					FUNC3(target->luns,
					    scan_info->lunindex[target_id],
					    lun_id);
					break;
				}
					
				scan_info->lunindex[target_id]++;
			}

			if (scan_info->lunindex[target_id] < nluns) {
				FUNC12(&target->luns_mtx);
				next_target = 0;
				FUNC1(request_ccb->ccb_h.path,
				    CAM_DEBUG_PROBE,
				   ("next lun to try at index %u is %jx\n",
				   scan_info->lunindex[target_id],
				   (uintmax_t)lun_id));
				scan_info->lunindex[target_id]++;
			} else {
				FUNC12(&target->luns_mtx);
				/* We're done with scanning all luns. */
			}
		} else {
			FUNC12(&target->luns_mtx);
			device = request_ccb->ccb_h.path->device;
			/* Continue sequential LUN scan if: */
			/*  -- we have more LUNs that need recheck */
			FUNC11(&target->bus->eb_mtx);
			nextdev = device;
			while ((nextdev = FUNC7(nextdev, links)) != NULL)
				if ((nextdev->flags & CAM_DEV_UNCONFIGURED) == 0)
					break;
			FUNC12(&target->bus->eb_mtx);
			if (nextdev != NULL) {
				next_target = 0;
			/*  -- stop if CAM_QUIRK_NOLUNS is set. */
			} else if (FUNC6(device)->quirks & CAM_QUIRK_NOLUNS) {
				next_target = 1;
			/*  -- this LUN is connected and its SCSI version
			 *     allows more LUNs. */
			} else if ((device->flags & CAM_DEV_UNCONFIGURED) == 0) {
				if (lun_id < (CAM_SCSI2_MAXLUN-1) ||
				    FUNC4(device))
					next_target = 0;
			/*  -- this LUN is disconnected, its SCSI version
			 *     allows more LUNs and we guess they may be. */
			} else if ((device->flags & CAM_DEV_INQUIRY_DATA_VALID) != 0) {
				if (lun_id < (CAM_SCSI2_MAXLUN-1) ||
				    FUNC5(device))
					next_target = 0;
			}
			if (next_target == 0) {
				lun_id++;
				if (lun_id > scan_info->cpi->max_lun)
					next_target = 1;
			}
		}

		/*
		 * Check to see if we scan any further luns.
		 */
		if (next_target) {
			int done;

			/*
			 * Free the current request path- we're done with it.
			 */
			FUNC21(oldpath);
 hop_again:
			done = 0;
			if (scan_info->request_ccb->ccb_h.func_code == XPT_SCAN_TGT) {
				done = 1;
			} else if (scan_info->cpi->hba_misc & PIM_SEQSCAN) {
				scan_info->counter++;
				if (scan_info->counter ==
				    scan_info->cpi->initiator_id) {
					scan_info->counter++;
				}
				if (scan_info->counter >=
				    scan_info->cpi->max_target+1) {
					done = 1;
				}
			} else {
				scan_info->counter--;
				if (scan_info->counter == 0) {
					done = 1;
				}
			}
			if (done) {
				FUNC12(mtx);
				FUNC20(request_ccb);
				FUNC20((union ccb *)scan_info->cpi);
				request_ccb = scan_info->request_ccb;
				FUNC1(request_ccb->ccb_h.path,
				    CAM_DEBUG_TRACE,
				   ("SCAN done for %p\n", scan_info));
				FUNC9(scan_info, M_CAMXPT);
				request_ccb->ccb_h.status = CAM_REQ_CMP;
				FUNC19(request_ccb);
				break;
			}

			if ((scan_info->cpi->hba_misc & PIM_SEQSCAN) == 0) {
				FUNC12(mtx);
				FUNC20(request_ccb);
				break;
			}
			status = FUNC18(&path, NULL,
			    scan_info->request_ccb->ccb_h.path_id,
			    scan_info->counter, 0);
			if (status != CAM_REQ_CMP) {
				FUNC12(mtx);
				FUNC13("scsi_scan_bus: xpt_create_path failed"
				    " with status %#x, bus scan halted\n",
			       	    status);
				FUNC20(request_ccb);
				FUNC20((union ccb *)scan_info->cpi);
				request_ccb = scan_info->request_ccb;
				FUNC9(scan_info, M_CAMXPT);
				request_ccb->ccb_h.status = status;
				FUNC19(request_ccb);
				break;
			}
			FUNC23(&request_ccb->ccb_h, path,
			    request_ccb->ccb_h.pinfo.priority);
			request_ccb->ccb_h.func_code = XPT_SCAN_LUN;
			request_ccb->ccb_h.cbfcnp = scsi_scan_bus;
			request_ccb->ccb_h.flags |= CAM_UNLOCKED;
			request_ccb->ccb_h.ppriv_ptr0 = scan_info;
			request_ccb->crcn.flags =
			    scan_info->request_ccb->crcn.flags;
		} else {
			status = FUNC18(&path, NULL,
						 path_id, target_id, lun_id);
			/*
			 * Free the old request path- we're done with it. We
			 * do this *after* creating the new path so that
			 * we don't remove a target that has our lun list
			 * in the case that lun 0 is not present.
			 */
			FUNC21(oldpath);
			if (status != CAM_REQ_CMP) {
				FUNC13("scsi_scan_bus: xpt_create_path failed "
				       "with status %#x, halting LUN scan\n",
			 	       status);
				goto hop_again;
			}
			FUNC23(&request_ccb->ccb_h, path,
				      request_ccb->ccb_h.pinfo.priority);
			request_ccb->ccb_h.func_code = XPT_SCAN_LUN;
			request_ccb->ccb_h.cbfcnp = scsi_scan_bus;
			request_ccb->ccb_h.flags |= CAM_UNLOCKED;
			request_ccb->ccb_h.ppriv_ptr0 = scan_info;
			request_ccb->crcn.flags =
				scan_info->request_ccb->crcn.flags;
		}
		FUNC12(mtx);
		FUNC16(request_ccb);
		break;
	}
	default:
		break;
	}
}