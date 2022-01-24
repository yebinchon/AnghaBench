#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int dd_flags; int /*<<< orphan*/  dd_lock; scalar_t__ dd_loc; scalar_t__ dd_seek; int /*<<< orphan*/  dd_fd; } ;
typedef  TYPE_1__ DIR ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int __DTF_READALL ; 
 int __DTF_SKIPREAD ; 
 scalar_t__ __isthreaded ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(DIR *dirp)
{

	if (__isthreaded)
		FUNC1(&dirp->dd_lock);
	dirp->dd_flags &= ~__DTF_SKIPREAD; /* current contents are invalid */
	if (dirp->dd_flags & __DTF_READALL)
		FUNC0(dirp, false);
	else {
		(void) FUNC4(dirp->dd_fd, 0, SEEK_SET);
		dirp->dd_seek = 0;
	}
	dirp->dd_loc = 0;
	FUNC3(dirp);
	if (__isthreaded)
		FUNC2(&dirp->dd_lock);
}