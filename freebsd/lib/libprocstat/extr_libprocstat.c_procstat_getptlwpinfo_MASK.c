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
struct ptrace_lwpinfo {int dummy; } ;
struct procstat {int type; int /*<<< orphan*/  core; } ;

/* Variables and functions */
#define  PROCSTAT_CORE 130 
#define  PROCSTAT_KVM 129 
#define  PROCSTAT_SYSCTL 128 
 struct ptrace_lwpinfo* FUNC0 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

struct ptrace_lwpinfo *
FUNC2(struct procstat *procstat, unsigned int *cntp)
{
	switch (procstat->type) {
	case PROCSTAT_KVM:
		FUNC1("kvm method is not supported");
		return (NULL);
	case PROCSTAT_SYSCTL:
		FUNC1("sysctl method is not supported");
		return (NULL);
	case PROCSTAT_CORE:
	 	return (FUNC0(procstat->core, cntp));
	default:
		FUNC1("unknown access method: %d", procstat->type);
		return (NULL);
	}
}