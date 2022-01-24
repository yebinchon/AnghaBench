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
struct TYPE_2__ {int /*<<< orphan*/  cbfcnp; struct pass_io_req* ccb_ioreq; int /*<<< orphan*/  ccb_type; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct pass_softc {int state; int /*<<< orphan*/  incoming_queue; int /*<<< orphan*/  device_stats; int /*<<< orphan*/  active_queue; } ;
struct pass_io_req {int /*<<< orphan*/  start_time; union ccb* alloced_ccb; int /*<<< orphan*/  ccb; } ;
struct cam_periph {scalar_t__ softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_PRIORITY_NORMAL ; 
 int /*<<< orphan*/  PASS_CCB_QUEUED_IO ; 
#define  PASS_STATE_NORMAL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pass_io_req* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct pass_io_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct pass_io_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  passdone ; 
 int /*<<< orphan*/  FUNC6 (union ccb*) ; 
 int /*<<< orphan*/  FUNC7 (union ccb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (union ccb*) ; 
 int /*<<< orphan*/  FUNC9 (struct cam_periph*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct cam_periph *periph, union ccb *start_ccb)
{
	struct pass_softc *softc;

	softc = (struct pass_softc *)periph->softc;

	switch (softc->state) {
	case PASS_STATE_NORMAL: {
		struct pass_io_req *io_req;

		/*
		 * Check for any queued I/O requests that require an
		 * allocated slot.
		 */
		io_req = FUNC1(&softc->incoming_queue);
		if (io_req == NULL) {
			FUNC8(start_ccb);
			break;
		}
		FUNC3(&softc->incoming_queue, io_req, links);
		FUNC2(&softc->active_queue, io_req, links);
		/*
		 * Merge the user's CCB into the allocated CCB.
		 */
		FUNC7(start_ccb, &io_req->ccb);
		start_ccb->ccb_h.ccb_type = PASS_CCB_QUEUED_IO;
		start_ccb->ccb_h.ccb_ioreq = io_req;
		start_ccb->ccb_h.cbfcnp = passdone;
		io_req->alloced_ccb = start_ccb;
		FUNC4(&io_req->start_time);
		FUNC5(softc->device_stats,
					  &io_req->start_time);

		FUNC6(start_ccb);

		/*
		 * If we have any more I/O waiting, schedule ourselves again.
		 */
		if (!FUNC0(&softc->incoming_queue))
			FUNC9(periph, CAM_PRIORITY_NORMAL);
		break;
	}
	default:
		break;
	}
}