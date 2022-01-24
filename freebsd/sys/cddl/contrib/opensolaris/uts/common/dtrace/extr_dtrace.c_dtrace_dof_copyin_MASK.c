#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hdr ;
struct TYPE_7__ {int dofh_loadsz; } ;
typedef  TYPE_1__ dof_hdr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int E2BIG ; 
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (void*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int dtrace_dof_maxsize ; 
 int /*<<< orphan*/  dtrace_lock ; 
 TYPE_1__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static dof_hdr_t *
FUNC6(uintptr_t uarg, int *errp)
{
	dof_hdr_t hdr, *dof;

	FUNC0(!FUNC1(&dtrace_lock));

	/*
	 * First, we're going to copyin() the sizeof (dof_hdr_t).
	 */
	if (FUNC2((void *)uarg, &hdr, sizeof (hdr)) != 0) {
		FUNC3(NULL, "failed to copyin DOF header");
		*errp = EFAULT;
		return (NULL);
	}

	/*
	 * Now we'll allocate the entire DOF and copy it in -- provided
	 * that the length isn't outrageous.
	 */
	if (hdr.dofh_loadsz >= dtrace_dof_maxsize) {
		FUNC3(&hdr, "load size exceeds maximum");
		*errp = E2BIG;
		return (NULL);
	}

	if (hdr.dofh_loadsz < sizeof (hdr)) {
		FUNC3(&hdr, "invalid load size");
		*errp = EINVAL;
		return (NULL);
	}

	dof = FUNC4(hdr.dofh_loadsz, KM_SLEEP);

	if (FUNC2((void *)uarg, dof, hdr.dofh_loadsz) != 0 ||
	    dof->dofh_loadsz != hdr.dofh_loadsz) {
		FUNC5(dof, hdr.dofh_loadsz);
		*errp = EFAULT;
		return (NULL);
	}

	return (dof);
}