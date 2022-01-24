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
struct rlimit {int dummy; } ;
struct procstat {int type; int /*<<< orphan*/  core; int /*<<< orphan*/  kd; } ;
struct kinfo_proc {int /*<<< orphan*/  ki_pid; } ;

/* Variables and functions */
#define  PROCSTAT_CORE 130 
#define  PROCSTAT_KVM 129 
#define  PROCSTAT_SYSCTL 128 
 int FUNC0 (int /*<<< orphan*/ ,int,struct rlimit*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct kinfo_proc*,int,struct rlimit*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

int
FUNC4(struct procstat *procstat, struct kinfo_proc *kp, int which,
    struct rlimit* rlimit)
{
	switch(procstat->type) {
	case PROCSTAT_KVM:
		return (FUNC1(procstat->kd, kp, which,
		    rlimit));
	case PROCSTAT_SYSCTL:
		return (FUNC2(kp->ki_pid, which, rlimit));
	case PROCSTAT_CORE:
		return (FUNC0(procstat->core, which, rlimit));
	default:
		FUNC3("unknown access method: %d", procstat->type);
		return (-1);
	}
}