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
typedef  int pid_t ;

/* Variables and functions */
 int CTL_KERN ; 
 scalar_t__ ESRCH ; 
 int KERN_PROC ; 
 int KERN_PROC_OSREL ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int FUNC1 (int*,int /*<<< orphan*/ ,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int
FUNC3(pid_t pid, int *osrelp)
{
	int error, name[4];
	size_t len;

	name[0] = CTL_KERN;
	name[1] = KERN_PROC;
	name[2] = KERN_PROC_OSREL;
	name[3] = pid;
	len = sizeof(*osrelp);
	error = FUNC1(name, FUNC0(name), osrelp, &len, NULL, 0);
	if (error != 0 && errno != ESRCH)
		FUNC2("sysctl: kern.proc.osrel: %d", pid);
	return (error);
}