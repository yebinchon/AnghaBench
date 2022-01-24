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
struct procstat {int type; int /*<<< orphan*/  core; } ;
struct kinfo_proc {int /*<<< orphan*/  ki_pid; } ;

/* Variables and functions */
#define  PROCSTAT_CORE 130 
#define  PROCSTAT_KVM 129 
#define  PROCSTAT_SYSCTL 128 
 int FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

int
FUNC3(struct procstat *procstat, struct kinfo_proc *kp,
    char *pathname, size_t maxlen)
{
	switch(procstat->type) {
	case PROCSTAT_KVM:
		/* XXX: Return empty string. */
		if (maxlen > 0)
			pathname[0] = '\0';
		return (0);
	case PROCSTAT_SYSCTL:
		return (FUNC1(kp->ki_pid, pathname,
		    maxlen));
	case PROCSTAT_CORE:
		return (FUNC0(procstat->core, pathname,
		    maxlen));
	default:
		FUNC2("unknown access method: %d", procstat->type);
		return (-1);
	}
}