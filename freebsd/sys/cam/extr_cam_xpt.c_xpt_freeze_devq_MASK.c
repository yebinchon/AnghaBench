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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct cam_path {struct cam_ed* device; } ;
struct cam_ed {TYPE_1__* sim; } ;
struct cam_devq {int /*<<< orphan*/  send_mtx; } ;
struct TYPE_2__ {struct cam_devq* devq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cam_path*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_ed*,int /*<<< orphan*/ ) ; 

u_int32_t
FUNC4(struct cam_path *path, u_int count)
{
	struct cam_ed	*dev = path->device;
	struct cam_devq	*devq;
	uint32_t	 freeze;

	devq = dev->sim->devq;
	FUNC1(&devq->send_mtx);
	FUNC0(path, CAM_DEBUG_TRACE, ("xpt_freeze_devq(%d)\n", count));
	freeze = FUNC3(dev, count);
	FUNC2(&devq->send_mtx);
	return (freeze);
}