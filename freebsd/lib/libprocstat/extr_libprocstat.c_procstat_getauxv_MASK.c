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
typedef  int /*<<< orphan*/  Elf_Auxinfo ;

/* Variables and functions */
#define  PROCSTAT_CORE 130 
#define  PROCSTAT_KVM 129 
#define  PROCSTAT_SYSCTL 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

Elf_Auxinfo *
FUNC3(struct procstat *procstat, struct kinfo_proc *kp,
    unsigned int *cntp)
{
	switch(procstat->type) {
	case PROCSTAT_KVM:
		FUNC2("kvm method is not supported");
		return (NULL);
	case PROCSTAT_SYSCTL:
		return (FUNC1(kp->ki_pid, cntp));
	case PROCSTAT_CORE:
		return (FUNC0(procstat->core, cntp));
	default:
		FUNC2("unknown access method: %d", procstat->type);
		return (NULL);
	}
}