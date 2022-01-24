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
struct dirent {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dd_lock; } ;
typedef  TYPE_1__ DIR ;

/* Variables and functions */
 int RDU_SHORT ; 
 int RDU_SKIP ; 
 int /*<<< orphan*/  FUNC0 (struct dirent*) ; 
 scalar_t__ __isthreaded ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct dirent* FUNC3 (TYPE_1__*,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (struct dirent*,struct dirent*,int /*<<< orphan*/ ) ; 

int
FUNC5(DIR *dirp, struct dirent *entry, struct dirent **result)
{
	struct dirent *dp;
	int saved_errno;

	saved_errno = errno;
	errno = 0;
	if (__isthreaded)
		FUNC1(&dirp->dd_lock);
	dp = FUNC3(dirp, RDU_SKIP | RDU_SHORT);
	if (dp != NULL)
		FUNC4(entry, dp, FUNC0(dp));
	if (__isthreaded)
		FUNC2(&dirp->dd_lock);

	if (errno != 0) {
		if (dp == NULL)
			return (errno);
	} else
		errno = saved_errno;

	if (dp != NULL)
		*result = entry;
	else
		*result = NULL;

	return (0);
}