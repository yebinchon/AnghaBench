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
struct freebsd11_dirent {int dummy; } ;
struct dirent {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dd_lock; struct freebsd11_dirent* dd_compat_de; } ;
typedef  TYPE_1__ DIR ;

/* Variables and functions */
 int /*<<< orphan*/  RDU_SKIP ; 
 scalar_t__ __isthreaded ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct dirent* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct freebsd11_dirent*,struct dirent*) ; 
 struct freebsd11_dirent* FUNC4 (int) ; 

struct freebsd11_dirent *
FUNC5(DIR *dirp)
{
	struct freebsd11_dirent *dstdp;
	struct dirent *dp;

	if (__isthreaded)
		FUNC0(&dirp->dd_lock);
	dp = FUNC2(dirp, RDU_SKIP);
	if (dp != NULL) {
		if (dirp->dd_compat_de == NULL)
			dirp->dd_compat_de = FUNC4(sizeof(struct
			    freebsd11_dirent));
		if (FUNC3(dirp->dd_compat_de, dp))
			dstdp = dirp->dd_compat_de;
		else
			dstdp = NULL;
	} else
		dstdp = NULL;
	if (__isthreaded)
		FUNC1(&dirp->dd_lock);

	return (dstdp);
}