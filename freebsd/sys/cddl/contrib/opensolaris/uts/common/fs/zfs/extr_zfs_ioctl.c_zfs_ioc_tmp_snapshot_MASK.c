#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  zc_cleanup_fd; int /*<<< orphan*/  zc_value; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  minor_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(zfs_cmd_t *zc)
{
	char *snap_name;
	char *hold_name;
	int error;
	minor_t minor;

	error = FUNC5(zc->zc_cleanup_fd, &minor);
	if (error != 0)
		return (error);

	snap_name = FUNC2("%s-%016llx", zc->zc_value,
	    (u_longlong_t)FUNC0());
	hold_name = FUNC2("%%%s", zc->zc_value);

	error = FUNC1(zc->zc_name, snap_name, minor,
	    hold_name);
	if (error == 0)
		(void) FUNC3(zc->zc_value, snap_name);
	FUNC4(snap_name);
	FUNC4(hold_name);
	FUNC6(zc->zc_cleanup_fd);
	return (error);
}