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
struct procstat {int type; } ;
struct kinfo_proc {int dummy; } ;
struct filestat_list {int dummy; } ;

/* Variables and functions */
#define  PROCSTAT_CORE 130 
#define  PROCSTAT_KVM 129 
#define  PROCSTAT_SYSCTL 128 
 struct filestat_list* FUNC0 (struct procstat*,struct kinfo_proc*,int) ; 
 struct filestat_list* FUNC1 (struct procstat*,struct kinfo_proc*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

struct filestat_list *
FUNC3(struct procstat *procstat, struct kinfo_proc *kp, int mmapped)
{

	switch(procstat->type) {
	case PROCSTAT_KVM:
		return (FUNC0(procstat, kp, mmapped));
	case PROCSTAT_SYSCTL:
	case PROCSTAT_CORE:
		return (FUNC1(procstat, kp, mmapped));
	default:
		FUNC2("unknown access method: %d", procstat->type);
		return (NULL);
	}
}