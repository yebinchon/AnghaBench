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
struct TYPE_4__ {int timeout; int /*<<< orphan*/  status; TYPE_1__* path; } ;
union ccb {TYPE_2__ ccb_h; } ;
typedef  int uint32_t ;
struct cam_ed {int /*<<< orphan*/  device_mtx; } ;
struct TYPE_3__ {struct cam_ed* device; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_RESRC_UNAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (union ccb*) ; 
 int FUNC3 (union ccb*) ; 
 int /*<<< orphan*/  FUNC4 (union ccb*,int) ; 

void
FUNC5(union ccb *start_ccb)
{
	uint32_t	timeout;
	struct cam_ed	*dev;

	timeout = start_ccb->ccb_h.timeout * 10;
	dev = start_ccb->ccb_h.path->device;

	FUNC1(&dev->device_mtx);

	timeout = FUNC3(start_ccb);
	if (timeout > 0) {
		FUNC2(start_ccb);
		FUNC4(start_ccb, timeout);
	} else {
		start_ccb->ccb_h.status = CAM_RESRC_UNAVAIL;
	}

	FUNC0(&dev->device_mtx);
}