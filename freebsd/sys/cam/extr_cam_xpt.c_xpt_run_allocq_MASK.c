#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
union ccb {int /*<<< orphan*/  ccb_h; } ;
typedef  scalar_t__ uint32_t ;
struct cam_periph {int periph_allocating; scalar_t__ immediate_priority; int periph_allocated; int flags; int /*<<< orphan*/  (* periph_start ) (struct cam_periph*,union ccb*) ;scalar_t__ scheduled_priority; int /*<<< orphan*/  ccb_list; TYPE_3__* path; int /*<<< orphan*/  periph_run_task; } ;
struct TYPE_5__ {int total_openings; } ;
struct cam_ed {TYPE_1__ ccbq; } ;
struct TYPE_8__ {int /*<<< orphan*/  sle; } ;
struct TYPE_7__ {struct cam_ed* device; } ;
struct TYPE_6__ {int /*<<< orphan*/  xpt_taskq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_XPT ; 
 int CAM_PERIPH_RUN_TASK ; 
 scalar_t__ CAM_PRIORITY_NONE ; 
 scalar_t__ CAM_PRIORITY_OOB ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_periph*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_periph*) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 TYPE_4__ periph_links ; 
 int /*<<< orphan*/  FUNC6 (struct cam_periph*,union ccb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 union ccb* FUNC9 (struct cam_periph*) ; 
 union ccb* FUNC10 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC11 (union ccb*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_3__*,scalar_t__) ; 
 TYPE_2__ xsoftc ; 

__attribute__((used)) static void
FUNC13(struct cam_periph *periph, int sleep)
{
	struct cam_ed	*device;
	union ccb	*ccb;
	uint32_t	 prio;

	FUNC2(periph, MA_OWNED);
	if (periph->periph_allocating)
		return;
	FUNC3(periph);
	periph->periph_allocating = 1;
	FUNC0(CAM_DEBUG_XPT, ("xpt_run_allocq(%p)\n", periph));
	device = periph->path->device;
	ccb = NULL;
restart:
	while ((prio = FUNC5(periph->scheduled_priority,
	    periph->immediate_priority)) != CAM_PRIORITY_NONE &&
	    (periph->periph_allocated - (ccb != NULL ? 1 : 0) <
	     device->ccbq.total_openings || prio <= CAM_PRIORITY_OOB)) {

		if (ccb == NULL &&
		    (ccb = FUNC10(periph)) == NULL) {
			if (sleep) {
				ccb = FUNC9(periph);
				goto restart;
			}
			if (periph->flags & CAM_PERIPH_RUN_TASK)
				break;
			FUNC3(periph);
			periph->flags |= CAM_PERIPH_RUN_TASK;
			FUNC7(xsoftc.xpt_taskq,
			    &periph->periph_run_task);
			break;
		}
		FUNC12(&ccb->ccb_h, periph->path, prio);
		if (prio == periph->immediate_priority) {
			periph->immediate_priority = CAM_PRIORITY_NONE;
			FUNC0(CAM_DEBUG_XPT,
					("waking cam_periph_getccb()\n"));
			FUNC1(&periph->ccb_list, &ccb->ccb_h,
					  periph_links.sle);
			FUNC8(&periph->ccb_list);
		} else {
			periph->scheduled_priority = CAM_PRIORITY_NONE;
			FUNC0(CAM_DEBUG_XPT,
					("calling periph_start()\n"));
			periph->periph_start(periph, ccb);
		}
		ccb = NULL;
	}
	if (ccb != NULL)
		FUNC11(ccb);
	periph->periph_allocating = 0;
	FUNC4(periph);
}