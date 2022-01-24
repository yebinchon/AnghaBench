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
struct rlimit {int /*<<< orphan*/ * p_limit; } ;
struct proc {int /*<<< orphan*/ * p_limit; } ;
struct kinfo_proc {void* ki_paddr; int /*<<< orphan*/  ki_pid; } ;
typedef  int /*<<< orphan*/  proc ;
typedef  int /*<<< orphan*/  kvm_t ;

/* Variables and functions */
 int RLIM_NLIMITS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long,struct rlimit*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(kvm_t *kd, struct kinfo_proc *kp, int which,
    struct rlimit* rlimit)
{
	struct proc proc;
	unsigned long offset;

	FUNC0(kd != NULL);
	FUNC0(kp != NULL);
	FUNC0(which >= 0 && which < RLIM_NLIMITS);
	if (!FUNC1(kd, (unsigned long)kp->ki_paddr, &proc,
	    sizeof(proc))) {
		FUNC2("can't read proc struct at %p for pid %d",
		    kp->ki_paddr, kp->ki_pid);
		return (-1);
	}
	if (proc.p_limit == NULL)
		return (-1);
	offset = (unsigned long)proc.p_limit + sizeof(struct rlimit) * which;
	if (!FUNC1(kd, offset, rlimit, sizeof(*rlimit))) {
		FUNC2("can't read rlimit struct at %p for pid %d",
		    (void *)offset, kp->ki_pid);
		return (-1);
	}
	return (0);
}