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
typedef  int /*<<< orphan*/  user_ccb ;
struct TYPE_3__ {int priority; } ;
struct targ_cmd_descr {int func_code; int priority; union ccb* user_ccb; scalar_t__ targ_descr; TYPE_1__ pinfo; } ;
union ccb {struct targ_cmd_descr ccb_h; } ;
struct uio {int uio_resid; } ;
struct targ_softc {int /*<<< orphan*/  periph; int /*<<< orphan*/  path; int /*<<< orphan*/  work_queue; int /*<<< orphan*/  pending_ccb_queue; } ;
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_4__ {int /*<<< orphan*/  tqe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_PERIPH ; 
 int CAM_PRIORITY_NONE ; 
 int /*<<< orphan*/  EFAULT ; 
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct targ_cmd_descr*,int /*<<< orphan*/ ) ; 
#define  XPT_ACCEPT_TARGET_IO 130 
 int XPT_FC_QUEUED ; 
#define  XPT_IMMEDIATE_NOTIFY 129 
#define  XPT_IMMED_NOTIFY 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void**) ; 
 int FUNC5 (int*) ; 
 TYPE_2__ periph_links ; 
 union ccb* FUNC6 (struct targ_softc*,int,int) ; 
 struct targ_cmd_descr* FUNC7 (struct targ_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct targ_softc*,union ccb*) ; 
 int /*<<< orphan*/  FUNC9 (struct targ_softc*,union ccb*,struct targ_cmd_descr*) ; 
 int /*<<< orphan*/  FUNC10 (struct targ_softc*,struct targ_cmd_descr*,union ccb*) ; 
 int /*<<< orphan*/  tqe ; 
 int FUNC11 (int /*<<< orphan*/ ,int,struct uio*) ; 
 int /*<<< orphan*/  FUNC12 (union ccb*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC14(struct cdev *dev, struct uio *uio, int ioflag)
{
	union ccb *user_ccb;
	struct targ_softc *softc;
	struct targ_cmd_descr *descr;
	int write_len, error;
	int func_code, priority;

	FUNC4((void **)&softc);
	write_len = error = 0;
	FUNC0(softc->path, CAM_DEBUG_PERIPH,
		  ("write - uio_resid %zd\n", uio->uio_resid));
	while (uio->uio_resid >= sizeof(user_ccb) && error == 0) {
		union ccb *ccb;

		error = FUNC11((caddr_t)&user_ccb, sizeof(user_ccb), uio);
		if (error != 0) {
			FUNC0(softc->path, CAM_DEBUG_PERIPH,
				  ("write - uiomove failed (%d)\n", error));
			break;
		}
		priority = FUNC5(&user_ccb->ccb_h.pinfo.priority);
		if (priority == CAM_PRIORITY_NONE) {
			error = EINVAL;
			break;
		}
		func_code = FUNC5(&user_ccb->ccb_h.func_code);
		switch (func_code) {
		case XPT_ACCEPT_TARGET_IO:
		case XPT_IMMED_NOTIFY:
		case XPT_IMMEDIATE_NOTIFY:
			FUNC2(softc->periph);
			ccb = FUNC6(softc, func_code, priority);
			descr = (struct targ_cmd_descr *)ccb->ccb_h.targ_descr;
			descr->user_ccb = user_ccb;
			descr->func_code = func_code;
			FUNC0(softc->path, CAM_DEBUG_PERIPH,
				  ("Sent ATIO/INOT (%p)\n", user_ccb));
			FUNC12(ccb);
			FUNC1(&softc->pending_ccb_queue,
					  &ccb->ccb_h,
					  periph_links.tqe);
			FUNC3(softc->periph);
			break;
		default:
			FUNC2(softc->periph);
			if ((func_code & XPT_FC_QUEUED) != 0) {
				FUNC0(softc->path, CAM_DEBUG_PERIPH,
					  ("Sending queued ccb %#x (%p)\n",
					  func_code, user_ccb));
				descr = FUNC7(softc);
				descr->user_ccb = user_ccb;
				descr->priority = priority;
				descr->func_code = func_code;
				FUNC1(&softc->work_queue,
						  descr, tqe);
				FUNC13(softc->periph, priority);
			} else {
				FUNC0(softc->path, CAM_DEBUG_PERIPH,
					  ("Sending inline ccb %#x (%p)\n",
					  func_code, user_ccb));
				ccb = FUNC6(softc, func_code, priority);
				descr = (struct targ_cmd_descr *)
					 ccb->ccb_h.targ_descr;
				descr->user_ccb = user_ccb;
				descr->priority = priority;
				descr->func_code = func_code;
				if (FUNC10(softc, descr, ccb) != EFAULT)
					FUNC9(softc, ccb, descr);
				FUNC8(softc, ccb);
			}
			FUNC3(softc->periph);
			break;
		}
		write_len += sizeof(user_ccb);
	}
	
	/*
	 * If we've successfully taken in some amount of
	 * data, return success for that data first.  If
	 * an error is persistent, it will be reported
	 * on the next write.
	 */
	if (error != 0 && write_len == 0)
		return (error);
	if (write_len == 0 && uio->uio_resid != 0)
		return (ENOSPC);
	return (0);
}