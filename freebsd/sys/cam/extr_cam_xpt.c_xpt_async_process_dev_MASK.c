#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  async_code; void* async_arg_ptr; } ;
struct TYPE_9__ {struct cam_path* path; } ;
union ccb {TYPE_2__ casync; TYPE_1__ ccb_h; } ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct cam_path {TYPE_4__* target; struct cam_ed* device; } ;
struct cam_ed {scalar_t__ lun_id; int /*<<< orphan*/  device_mtx; int /*<<< orphan*/  asyncs; TYPE_8__* target; } ;
struct TYPE_16__ {scalar_t__ target_id; TYPE_7__* bus; } ;
struct TYPE_15__ {scalar_t__ path_id; TYPE_6__* xport; } ;
struct TYPE_14__ {TYPE_5__* ops; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* async ) (int /*<<< orphan*/ ,TYPE_7__*,TYPE_8__*,struct cam_ed*,void*) ;} ;
struct TYPE_12__ {scalar_t__ target_id; TYPE_3__* bus; } ;
struct TYPE_11__ {scalar_t__ path_id; } ;

/* Variables and functions */
 scalar_t__ CAM_BUS_WILDCARD ; 
 scalar_t__ CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_7__*,TYPE_8__*,struct cam_ed*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_ed*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct cam_path*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC6 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC7 (struct cam_ed*) ; 

__attribute__((used)) static int
FUNC8(struct cam_ed *device, void *arg)
{
	union ccb *ccb = arg;
	struct cam_path *path = ccb->ccb_h.path;
	void *async_arg = ccb->casync.async_arg_ptr;
	u_int32_t async_code = ccb->casync.async_code;
	int relock;

	if (path->device != device
	 && path->device->lun_id != CAM_LUN_WILDCARD
	 && device->lun_id != CAM_LUN_WILDCARD)
		return (1);

	/*
	 * The async callback could free the device.
	 * If it is a broadcast async, it doesn't hold
	 * device reference, so take our own reference.
	 */
	FUNC3(device);

	/*
	 * If async for specific device is to be delivered to
	 * the wildcard client, take the specific device lock.
	 * XXX: We may need a way for client to specify it.
	 */
	if ((device->lun_id == CAM_LUN_WILDCARD &&
	     path->device->lun_id != CAM_LUN_WILDCARD) ||
	    (device->target->target_id == CAM_TARGET_WILDCARD &&
	     path->target->target_id != CAM_TARGET_WILDCARD) ||
	    (device->target->bus->path_id == CAM_BUS_WILDCARD &&
	     path->target->bus->path_id != CAM_BUS_WILDCARD)) {
		FUNC1(&device->device_mtx);
		FUNC5(path);
		relock = 1;
	} else
		relock = 0;

	(*(device->target->bus->xport->ops->async))(async_code,
	    device->target->bus, device->target, device, async_arg);
	FUNC4(&device->asyncs, async_code, path, async_arg);

	if (relock) {
		FUNC6(path);
		FUNC0(&device->device_mtx);
	}
	FUNC7(device);
	return (1);
}