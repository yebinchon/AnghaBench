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
struct cam_path {int /*<<< orphan*/ * bus; int /*<<< orphan*/ * target; int /*<<< orphan*/ * device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cam_path*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct cam_path *path)
{
	FUNC0(path, CAM_DEBUG_TRACE, ("xpt_release_path\n"));
	if (path->device != NULL) {
		FUNC2(path->device);
		path->device = NULL;
	}
	if (path->target != NULL) {
		FUNC3(path->target);
		path->target = NULL;
	}
	if (path->bus != NULL) {
		FUNC1(path->bus);
		path->bus = NULL;
	}
}