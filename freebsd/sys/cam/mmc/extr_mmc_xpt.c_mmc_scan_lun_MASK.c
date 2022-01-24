#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ status; } ;
union ccb {TYPE_2__ ccb_h; } ;
struct TYPE_3__ {scalar_t__ status; } ;
struct ccb_pathinq {TYPE_1__ ccb_h; } ;
struct cam_periph {int flags; } ;
struct cam_path {int dummy; } ;
typedef  scalar_t__ cam_status ;
typedef  int /*<<< orphan*/  cam_flags ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cam_path*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_INFO ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 scalar_t__ CAM_LUN_WILDCARD ; 
 int /*<<< orphan*/  CAM_PERIPH_BIO ; 
 int CAM_PERIPH_INVALID ; 
 scalar_t__ CAM_REQ_CMP ; 
 void* CAM_REQ_CMP_ERR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct cam_path*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,union ccb*) ; 
 struct cam_periph* FUNC2 (struct cam_path*,char*) ; 
 int /*<<< orphan*/  mmcprobe_cleanup ; 
 int /*<<< orphan*/  mmcprobe_register ; 
 int /*<<< orphan*/  mmcprobe_start ; 
 int /*<<< orphan*/  FUNC3 (union ccb*) ; 
 int /*<<< orphan*/  FUNC4 (struct ccb_pathinq*,struct cam_path*) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_path*) ; 
 scalar_t__ FUNC6 (struct cam_path*) ; 
 scalar_t__ FUNC7 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC8 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC9 (struct cam_path*,char*) ; 

__attribute__((used)) static void
FUNC10(struct cam_periph *periph, struct cam_path *path,
	     cam_flags flags, union ccb *request_ccb)
{
	struct ccb_pathinq cpi;
	cam_status status;
	struct cam_periph *old_periph;
	int lock;

	FUNC0(path, CAM_DEBUG_TRACE, ("mmc_scan_lun\n"));

	FUNC4(&cpi, path);

	if (cpi.ccb_h.status != CAM_REQ_CMP) {
		if (request_ccb != NULL) {
			request_ccb->ccb_h.status = cpi.ccb_h.status;
			FUNC3(request_ccb);
		}
		return;
	}

	if (FUNC6(path) == CAM_LUN_WILDCARD) {
		FUNC0(path, CAM_DEBUG_TRACE, ("mmd_scan_lun ignoring bus\n"));
		request_ccb->ccb_h.status = CAM_REQ_CMP;	/* XXX signal error ? */
		FUNC3(request_ccb);
		return;
	}

	lock = (FUNC7(path) == 0);
	if (lock)
		FUNC5(path);

	if ((old_periph = FUNC2(path, "mmcprobe")) != NULL) {
		if ((old_periph->flags & CAM_PERIPH_INVALID) == 0) {
//			mmcprobe_softc *softc;
//			softc = (mmcprobe_softc *)old_periph->softc;
//                      Not sure if we need request ccb queue for mmc
//			TAILQ_INSERT_TAIL(&softc->request_ccbs,
//				&request_ccb->ccb_h, periph_links.tqe);
//			softc->restart = 1;
                        FUNC0(path, CAM_DEBUG_INFO,
                                  ("Got scan request, but mmcprobe already exists\n"));
			request_ccb->ccb_h.status = CAM_REQ_CMP_ERR;
                        FUNC3(request_ccb);
		} else {
			request_ccb->ccb_h.status = CAM_REQ_CMP_ERR;
			FUNC3(request_ccb);
		}
	} else {
		FUNC9(path, " Set up the mmcprobe device...\n");

                status = FUNC1(mmcprobe_register, NULL,
					  mmcprobe_cleanup,
					  mmcprobe_start,
					  "mmcprobe",
					  CAM_PERIPH_BIO,
					  path, NULL, 0,
					  request_ccb);
                if (status != CAM_REQ_CMP) {
			FUNC9(path, "xpt_scan_lun: cam_alloc_periph "
                                  "returned an error, can't continue probe\n");
		}
		request_ccb->ccb_h.status = status;
		FUNC3(request_ccb);
	}

	if (lock)
		FUNC8(path);
}