#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cam_path {int /*<<< orphan*/  bus; } ;
typedef  int /*<<< orphan*/  path_id_t ;
typedef  scalar_t__ int32_t ;
typedef  scalar_t__ cam_status ;

/* Variables and functions */
 int /*<<< orphan*/  AC_LOST_DEVICE ; 
 int /*<<< orphan*/  AC_PATH_DEREGISTERED ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cam_path*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct cam_path*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_path*) ; 

int32_t
FUNC4(path_id_t pathid)
{
	struct cam_path bus_path;
	cam_status status;

	status = FUNC1(&bus_path, NULL, pathid,
				  CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD);
	if (status != CAM_REQ_CMP)
		return (status);

	FUNC0(AC_LOST_DEVICE, &bus_path, NULL);
	FUNC0(AC_PATH_DEREGISTERED, &bus_path, NULL);

	/* Release the reference count held while registered. */
	FUNC2(bus_path.bus);
	FUNC3(&bus_path);

	return (CAM_REQ_CMP);
}