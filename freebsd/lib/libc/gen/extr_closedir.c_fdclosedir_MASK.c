#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int dd_fd; void* dd_compat_de; int /*<<< orphan*/  dd_lock; scalar_t__ dd_buf; scalar_t__ dd_loc; } ;
typedef  TYPE_1__ DIR ;

/* Variables and functions */
 scalar_t__ __isthreaded ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

int
FUNC5(DIR *dirp)
{
	int fd;

	if (__isthreaded)
		FUNC1(&dirp->dd_lock);
	fd = dirp->dd_fd;
	dirp->dd_fd = -1;
	dirp->dd_loc = 0;
	FUNC4((void *)dirp->dd_buf);
	FUNC4(dirp->dd_compat_de);
	FUNC3(dirp);
	if (__isthreaded) {
		FUNC2(&dirp->dd_lock);
		FUNC0(&dirp->dd_lock);
	}
	FUNC4((void *)dirp);
	return (fd);
}