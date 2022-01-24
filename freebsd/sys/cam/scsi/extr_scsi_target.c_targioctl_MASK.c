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
typedef  union ccb {int dummy; } ccb ;
typedef  int u_long ;
struct thread {int dummy; } ;
struct targ_softc {int state; int /*<<< orphan*/  path; int /*<<< orphan*/ * periph; } ;
struct ioc_enable_lun {int /*<<< orphan*/  grp7_len; int /*<<< orphan*/  grp6_len; int /*<<< orphan*/  lun_id; int /*<<< orphan*/  target_id; int /*<<< orphan*/  path_id; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int status; int /*<<< orphan*/  cbfcnp; int /*<<< orphan*/  func_code; } ;
struct ccb_debug {TYPE_1__ ccb_h; int /*<<< orphan*/  flags; } ;
struct cam_path {int dummy; } ;
typedef  int cam_status ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_DEBUG_NONE ; 
 int /*<<< orphan*/  CAM_DEBUG_PERIPH ; 
 int CAM_DEV_NOT_THERE ; 
 int /*<<< orphan*/  CAM_PRIORITY_NORMAL ; 
 int CAM_PROVIDE_FAIL ; 
 int CAM_REQ_CMP ; 
 int CAM_STATUS_MASK ; 
#define  TARGIOCDEBUG 130 
#define  TARGIOCDISABLE 129 
#define  TARGIOCENABLE 128 
 int TARG_STATE_LUN_ENABLED ; 
 int /*<<< orphan*/  XPT_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct ccb_debug*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void**) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (struct targ_softc*) ; 
 int /*<<< orphan*/  targdone ; 
 int FUNC7 (struct targ_softc*,struct cam_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (union ccb*) ; 
 int FUNC9 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC11 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC12 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(struct cdev *dev, u_long cmd, caddr_t addr, int flag, struct thread *td)
{
	struct targ_softc *softc;
	cam_status	   status;

	FUNC3((void **)&softc);

	switch (cmd) {
	case TARGIOCENABLE:
	{
		struct ioc_enable_lun	*new_lun;
		struct cam_path		*path;

		new_lun = (struct ioc_enable_lun *)addr;
		status = FUNC9(&path, /*periph*/NULL,
					  new_lun->path_id,
					  new_lun->target_id,
					  new_lun->lun_id);
		if (status != CAM_REQ_CMP) {
			FUNC4("Couldn't create path, status %#x\n", status);
			break;
		}
		FUNC11(path);
		status = FUNC7(softc, path, new_lun->grp6_len,
				    new_lun->grp7_len);
		FUNC12(path);
		FUNC10(path);
		break;
	}
	case TARGIOCDISABLE:
		if (softc->periph == NULL) {
			status = CAM_DEV_NOT_THERE;
			break;
		}
		FUNC1(softc->periph);
		status = FUNC6(softc);
		FUNC2(softc->periph);
		break;
	case TARGIOCDEBUG:
	{
		struct ccb_debug cdbg;

		/* If no periph available, disallow debugging changes */
		if ((softc->state & TARG_STATE_LUN_ENABLED) == 0) {
			status = CAM_DEV_NOT_THERE;
			break;
		}
		FUNC0(&cdbg, sizeof cdbg);
		if (*((int *)addr) != 0)
			cdbg.flags = CAM_DEBUG_PERIPH;
		else
			cdbg.flags = CAM_DEBUG_NONE;
		FUNC13(&cdbg.ccb_h, softc->path, CAM_PRIORITY_NORMAL);
		cdbg.ccb_h.func_code = XPT_DEBUG;
		cdbg.ccb_h.cbfcnp = targdone;
		FUNC8((union ccb *)&cdbg);
		status = cdbg.ccb_h.status & CAM_STATUS_MASK;
		break;
	}
	default:
		status = CAM_PROVIDE_FAIL;
		break;
	}

	return (FUNC5(status));
}