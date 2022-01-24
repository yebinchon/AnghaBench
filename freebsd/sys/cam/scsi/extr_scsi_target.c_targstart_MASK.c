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
typedef  union ccb {int dummy; } ccb ;
struct targ_softc {int /*<<< orphan*/  abort_queue; int /*<<< orphan*/  work_queue; int /*<<< orphan*/  path; } ;
struct targ_cmd_descr {int /*<<< orphan*/  priority; TYPE_2__* user_ccb; } ;
struct cam_periph {int /*<<< orphan*/  path; scalar_t__ softc; } ;
struct TYPE_3__ {int /*<<< orphan*/  status; } ;
struct TYPE_4__ {TYPE_1__ ccb_h; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_PERIPH ; 
 int /*<<< orphan*/  CAM_REQ_CMP_ERR ; 
 struct targ_cmd_descr* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct targ_cmd_descr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct targ_cmd_descr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct targ_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct targ_softc*,union ccb*,struct targ_cmd_descr*) ; 
 int FUNC7 (struct targ_softc*,struct targ_cmd_descr*,union ccb*) ; 
 int /*<<< orphan*/  tqe ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (union ccb*) ; 
 int /*<<< orphan*/  FUNC10 (struct cam_periph*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct cam_periph *periph, union ccb *start_ccb)
{
	struct targ_softc *softc;
	struct targ_cmd_descr *descr, *next_descr;
	int error;

	softc = (struct targ_softc *)periph->softc;
	FUNC0(softc->path, CAM_DEBUG_PERIPH, ("targstart %p\n", start_ccb));

	descr = FUNC1(&softc->work_queue);
	if (descr == NULL) {
		FUNC9(start_ccb);
	} else {
		FUNC3(&softc->work_queue, descr, tqe);
		next_descr = FUNC1(&softc->work_queue);

		/* Initiate a transaction using the descr and supplied CCB */
		error = FUNC7(softc, descr, start_ccb);
		if (error == 0)
			error = FUNC6(softc, start_ccb, descr);
		if (error != 0) {
			FUNC8(periph->path,
			    "targsendccb failed, err %d\n", error);
			FUNC9(start_ccb);
			FUNC5(&descr->user_ccb->ccb_h.status,
			       CAM_REQ_CMP_ERR);
			FUNC2(&softc->abort_queue, descr, tqe);
			FUNC4(softc);
		}

		/* If we have more work to do, stay scheduled */
		if (next_descr != NULL)
			FUNC10(periph, next_descr->priority);
	}
}