#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ status; int /*<<< orphan*/  path; int /*<<< orphan*/  func_code; int /*<<< orphan*/  flags; int /*<<< orphan*/  cbfcnp; } ;
struct TYPE_14__ {int /*<<< orphan*/  flags; } ;
union ccb {TYPE_7__ ccb_h; TYPE_5__ crcn; } ;
struct TYPE_10__ {scalar_t__ status; } ;
struct ccb_pathinq {TYPE_1__ ccb_h; } ;
struct cam_periph {int flags; scalar_t__ softc; } ;
struct cam_path {TYPE_4__* device; TYPE_3__* target; TYPE_2__* bus; } ;
struct TYPE_15__ {int restart; int /*<<< orphan*/  request_ccbs; } ;
typedef  TYPE_6__ probe_softc ;
typedef  scalar_t__ cam_status ;
typedef  int /*<<< orphan*/  cam_flags ;
struct TYPE_17__ {int /*<<< orphan*/  tqe; } ;
struct TYPE_13__ {int /*<<< orphan*/  lun_id; } ;
struct TYPE_12__ {int /*<<< orphan*/  target_id; } ;
struct TYPE_11__ {int /*<<< orphan*/  path_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cam_path*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 int /*<<< orphan*/  CAM_PERIPH_BIO ; 
 int CAM_PERIPH_INVALID ; 
 int /*<<< orphan*/  CAM_PRIORITY_XPT ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_REQ_CMP_ERR ; 
 int /*<<< orphan*/  CAM_UNLOCKED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XPT_SCAN_LUN ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,union ccb*) ; 
 struct cam_periph* FUNC3 (struct cam_path*,char*) ; 
 TYPE_8__ periph_links ; 
 int /*<<< orphan*/  probecleanup ; 
 int /*<<< orphan*/  proberegister ; 
 int /*<<< orphan*/  probestart ; 
 union ccb* FUNC4 () ; 
 scalar_t__ FUNC5 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (union ccb*) ; 
 int /*<<< orphan*/  FUNC7 (union ccb*) ; 
 int /*<<< orphan*/  FUNC8 (struct ccb_pathinq*,struct cam_path*) ; 
 int /*<<< orphan*/  FUNC9 (struct cam_path*) ; 
 scalar_t__ FUNC10 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC11 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC12 (struct cam_path*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*,struct cam_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xptscandone ; 

__attribute__((used)) static void
FUNC14(struct cam_periph *periph, struct cam_path *path,
	     cam_flags flags, union ccb *request_ccb)
{
	struct ccb_pathinq cpi;
	cam_status status;
	struct cam_path *new_path;
	struct cam_periph *old_periph;
	int lock;

	FUNC0(path, CAM_DEBUG_TRACE, ("xpt_scan_lun\n"));

	FUNC8(&cpi, path);
	if (cpi.ccb_h.status != CAM_REQ_CMP) {
		if (request_ccb != NULL) {
			request_ccb->ccb_h.status = cpi.ccb_h.status;
			FUNC6(request_ccb);
		}
		return;
	}

	if (request_ccb == NULL) {
		request_ccb = FUNC4();
		if (request_ccb == NULL) {
			FUNC12(path, "xpt_scan_lun: can't allocate CCB, "
			    "can't continue\n");
			return;
		}
		status = FUNC5(&new_path, NULL,
					  path->bus->path_id,
					  path->target->target_id,
					  path->device->lun_id);
		if (status != CAM_REQ_CMP) {
			FUNC12(path, "xpt_scan_lun: can't create path, "
			    "can't continue\n");
			FUNC7(request_ccb);
			return;
		}
		FUNC13(&request_ccb->ccb_h, new_path, CAM_PRIORITY_XPT);
		request_ccb->ccb_h.cbfcnp = xptscandone;
		request_ccb->ccb_h.flags |= CAM_UNLOCKED;
		request_ccb->ccb_h.func_code = XPT_SCAN_LUN;
		request_ccb->crcn.flags = flags;
	}

	lock = (FUNC10(path) == 0);
	if (lock)
		FUNC9(path);
	if ((old_periph = FUNC3(path, "aprobe")) != NULL) {
		if ((old_periph->flags & CAM_PERIPH_INVALID) == 0) {
			probe_softc *softc;

			softc = (probe_softc *)old_periph->softc;
			FUNC1(&softc->request_ccbs,
				&request_ccb->ccb_h, periph_links.tqe);
			softc->restart = 1;
		} else {
			request_ccb->ccb_h.status = CAM_REQ_CMP_ERR;
			FUNC6(request_ccb);
		}
	} else {
		status = FUNC2(proberegister, NULL, probecleanup,
					  probestart, "aprobe",
					  CAM_PERIPH_BIO,
					  request_ccb->ccb_h.path, NULL, 0,
					  request_ccb);

		if (status != CAM_REQ_CMP) {
			FUNC12(path, "xpt_scan_lun: cam_alloc_periph "
			    "returned an error, can't continue probe\n");
			request_ccb->ccb_h.status = status;
			FUNC6(request_ccb);
		}
	}
	if (lock)
		FUNC11(path);
}