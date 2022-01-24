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
struct TYPE_4__ {int priority; } ;
struct TYPE_6__ {int /*<<< orphan*/  status; TYPE_1__ pinfo; int /*<<< orphan*/  func_code; } ;
union ccb {TYPE_3__ ccb_h; } ;
typedef  int /*<<< orphan*/  ccb ;
struct TYPE_5__ {int /*<<< orphan*/  tqe; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_PROVIDE_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (union ccb*) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  pending_queue ; 
 TYPE_2__ periph_links ; 
 int /*<<< orphan*/  targ_fd ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,union ccb**,int) ; 

void
FUNC5(union ccb *ccb, int priority)
{
	if (debug)
		FUNC3("sending ccb (%#x)", ccb->ccb_h.func_code);
	ccb->ccb_h.pinfo.priority = priority;
	if (FUNC1(ccb)) {
		FUNC0(&pending_queue, &ccb->ccb_h,
				  periph_links.tqe);
	}
	if (FUNC4(targ_fd, &ccb, sizeof(ccb)) != sizeof(ccb)) {
		FUNC2("write ccb");
		ccb->ccb_h.status = CAM_PROVIDE_FAIL;
	}
}