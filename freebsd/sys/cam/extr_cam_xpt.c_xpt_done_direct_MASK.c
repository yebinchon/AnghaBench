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
struct TYPE_3__ {int /*<<< orphan*/  periph_data; } ;
struct TYPE_4__ {int func_code; TYPE_1__ qos; int /*<<< orphan*/  status; int /*<<< orphan*/  path; } ;
union ccb {TYPE_2__ ccb_h; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 int XPT_FC_QUEUED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void
FUNC3(union ccb *done_ccb)
{

	FUNC0(done_ccb->ccb_h.path, CAM_DEBUG_TRACE,
	    ("xpt_done_direct: status %#x\n", done_ccb->ccb_h.status));
	if ((done_ccb->ccb_h.func_code & XPT_FC_QUEUED) == 0)
		return;

	/* Store the time the ccb was in the sim */
	done_ccb->ccb_h.qos.periph_data = FUNC1(done_ccb->ccb_h.qos.periph_data);
	FUNC2(&done_ccb->ccb_h);
}