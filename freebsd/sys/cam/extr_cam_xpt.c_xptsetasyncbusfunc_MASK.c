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
struct ccb_setasync {int /*<<< orphan*/  callback_arg; int /*<<< orphan*/  (* callback ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cam_path*,struct ccb_pathinq*) ;} ;
struct ccb_pathinq {int dummy; } ;
struct cam_path {int dummy; } ;
struct cam_eb {int /*<<< orphan*/  path_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_PATH_REGISTERED ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cam_path*,struct ccb_pathinq*) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_path*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ccb_pathinq*,struct cam_path*) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_path*) ; 

__attribute__((used)) static int
FUNC6(struct cam_eb *bus, void *arg)
{
	struct cam_path path;
	struct ccb_pathinq cpi;
	struct ccb_setasync *csa = (struct ccb_setasync *)arg;

	FUNC1(&path, /*periph*/NULL,
			 bus->path_id,
			 CAM_TARGET_WILDCARD,
			 CAM_LUN_WILDCARD);
	FUNC3(&path);
	FUNC2(&cpi, &path);
	csa->callback(csa->callback_arg,
			    AC_PATH_REGISTERED,
			    &path, &cpi);
	FUNC4(&path);
	FUNC5(&path);

	return(1);
}