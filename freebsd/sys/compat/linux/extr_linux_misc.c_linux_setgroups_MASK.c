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
struct ucred {int cr_ngroups; int /*<<< orphan*/ * cr_groups; } ;
struct thread {struct proc* td_proc; } ;
struct proc {struct ucred* p_ucred; } ;
struct linux_setgroups_args {int gidsetsize; int /*<<< orphan*/  grouplist; } ;
typedef  int /*<<< orphan*/  l_gid_t ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M_LINUX ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PRIV_CRED_SETGROUPS ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ucred*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC4 (struct ucred*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ucred*) ; 
 struct ucred* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ngroups_max ; 
 int FUNC9 (struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC11 (struct proc*) ; 

int
FUNC12(struct thread *td, struct linux_setgroups_args *args)
{
	struct ucred *newcred, *oldcred;
	l_gid_t *linux_gidset;
	gid_t *bsd_gidset;
	int ngrp, error;
	struct proc *p;

	ngrp = args->gidsetsize;
	if (ngrp < 0 || ngrp >= ngroups_max + 1)
		return (EINVAL);
	linux_gidset = FUNC8(ngrp * sizeof(*linux_gidset), M_LINUX, M_WAITOK);
	error = FUNC2(args->grouplist, linux_gidset, ngrp * sizeof(l_gid_t));
	if (error)
		goto out;
	newcred = FUNC6();
	FUNC4(newcred, ngrp + 1);
	p = td->td_proc;
	FUNC0(p);
	oldcred = p->p_ucred;
	FUNC3(newcred, oldcred);

	/*
	 * cr_groups[0] holds egid. Setting the whole set from
	 * the supplied set will cause egid to be changed too.
	 * Keep cr_groups[0] unchanged to prevent that.
	 */

	if ((error = FUNC9(oldcred, PRIV_CRED_SETGROUPS)) != 0) {
		FUNC1(p);
		FUNC5(newcred);
		goto out;
	}

	if (ngrp > 0) {
		newcred->cr_ngroups = ngrp + 1;

		bsd_gidset = newcred->cr_groups;
		ngrp--;
		while (ngrp >= 0) {
			bsd_gidset[ngrp + 1] = linux_gidset[ngrp];
			ngrp--;
		}
	} else
		newcred->cr_ngroups = 1;

	FUNC11(p);
	FUNC10(p, newcred);
	FUNC1(p);
	FUNC5(oldcred);
	error = 0;
out:
	FUNC7(linux_gidset, M_LINUX);
	return (error);
}