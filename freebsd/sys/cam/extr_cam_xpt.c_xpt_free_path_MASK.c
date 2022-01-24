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
struct cam_path {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cam_path*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 int /*<<< orphan*/  M_CAMPATH ; 
 int /*<<< orphan*/  FUNC1 (struct cam_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_path*) ; 

void
FUNC3(struct cam_path *path)
{

	FUNC0(path, CAM_DEBUG_TRACE, ("xpt_free_path\n"));
	FUNC2(path);
	FUNC1(path, M_CAMPATH);
}