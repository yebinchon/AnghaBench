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
struct procstat {int type; int /*<<< orphan*/  core; int /*<<< orphan*/  kd; } ;
struct kinfo_proc {int /*<<< orphan*/  ki_pid; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
#define  PROCSTAT_CORE 130 
#define  PROCSTAT_KVM 129 
#define  PROCSTAT_SYSCTL 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,struct kinfo_proc*,unsigned int*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

gid_t *
FUNC4(struct procstat *procstat, struct kinfo_proc *kp,
    unsigned int *cntp)
{
	switch(procstat->type) {
	case PROCSTAT_KVM:
		return (FUNC1(procstat->kd, kp, cntp));
	case PROCSTAT_SYSCTL:
		return (FUNC2(kp->ki_pid, cntp));
	case PROCSTAT_CORE:
		return (FUNC0(procstat->core, cntp));
	default:
		FUNC3("unknown access method: %d", procstat->type);
		return (NULL);
	}
}