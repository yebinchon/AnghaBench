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
typedef  size_t pid_t ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int CTL_KERN ; 
 int KERN_PROC ; 
 int KERN_PROC_GROUPS ; 
 int /*<<< orphan*/  _SC_NGROUPS_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t) ; 

__attribute__((used)) static gid_t *
FUNC6(pid_t pid, unsigned int *cntp)
{
	int mib[4];
	size_t len;
	gid_t *groups;

	mib[0] = CTL_KERN;
	mib[1] = KERN_PROC;
	mib[2] = KERN_PROC_GROUPS;
	mib[3] = pid;
	len = (FUNC3(_SC_NGROUPS_MAX) + 1) * sizeof(gid_t);
	groups = FUNC1(len);
	if (groups == NULL) {
		FUNC5("malloc(%zu)", len);
		return (NULL);
	}
	if (FUNC4(mib, FUNC2(mib), groups, &len, NULL, 0) == -1) {
		FUNC5("sysctl: kern.proc.groups: %d", pid);
		FUNC0(groups);
		return (NULL);
	}
	*cntp = len / sizeof(gid_t);
	return (groups);
}