#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct thread {int dummy; } ;
struct proc {int p_flag; struct proc* p_pptr; int /*<<< orphan*/  p_pid; } ;
struct cdev {int dummy; } ;
struct TYPE_3__ {int dofhp_gen; int /*<<< orphan*/  dofhp_pid; int /*<<< orphan*/  dofhp_dof; } ;
typedef  TYPE_1__ dof_helper_t ;
typedef  int /*<<< orphan*/  dof_hdr_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
#define  DTRACEHIOC_ADDDOF 129 
#define  DTRACEHIOC_REMOVE 128 
 int EINVAL ; 
 int ENOTTY ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int P_TRACED ; 
 int P_WEXIT ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 struct proc* curproc ; 
 int /*<<< orphan*/ * FUNC4 (uintptr_t,int*) ; 
 int /*<<< orphan*/ * FUNC5 (struct proc*,uintptr_t,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,struct proc*) ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct proc* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct cdev *dev, u_long cmd, caddr_t addr, int flags,
    struct thread *td)
{
	struct proc *p;
	dof_helper_t *dhp;
	dof_hdr_t *dof;
	int rval;

	dhp = NULL;
	dof = NULL;
	rval = 0;
	switch (cmd) {
	case DTRACEHIOC_ADDDOF:
		dhp = (dof_helper_t *)addr;
		addr = (caddr_t)(uintptr_t)dhp->dofhp_dof;
		p = curproc;
		if (p->p_pid == dhp->dofhp_pid) {
			dof = FUNC4((uintptr_t)addr, &rval);
		} else {
			p = FUNC10(dhp->dofhp_pid);
			if (p == NULL)
				return (EINVAL);
			if (!FUNC2(p) ||
			    (p->p_flag & (P_TRACED | P_WEXIT)) != P_TRACED ||
			    p->p_pptr != curproc) {
				FUNC1(p);
				return (EINVAL);
			}
			FUNC3(p);
			FUNC1(p);
			dof = FUNC5(p, (uintptr_t)addr, &rval);
		}

		if (dof == NULL) {
			if (p != curproc)
				FUNC0(p);
			break;
		}

		FUNC8(&dtrace_lock);
		if ((rval = FUNC7(dof, dhp, p)) != -1) {
			dhp->dofhp_gen = rval;
			rval = 0;
		} else {
			rval = EINVAL;
		}
		FUNC9(&dtrace_lock);
		if (p != curproc)
			FUNC0(p);
		break;
	case DTRACEHIOC_REMOVE:
		FUNC8(&dtrace_lock);
		rval = FUNC6(NULL, *(int *)(uintptr_t)addr);
		FUNC9(&dtrace_lock);
		break;
	default:
		rval = ENOTTY;
		break;
	}
	return (rval);
}