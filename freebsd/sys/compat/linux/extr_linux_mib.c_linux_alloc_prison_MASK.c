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
struct prison {int /*<<< orphan*/  pr_mtx; } ;
struct linux_prison {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_PRISON ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct linux_prison*,struct linux_prison*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct linux_prison*,int /*<<< orphan*/ ) ; 
 struct linux_prison* FUNC2 (struct prison*,struct prison**) ; 
 int /*<<< orphan*/  linux_osd_jail_slot ; 
 struct linux_prison* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void**) ; 
 int /*<<< orphan*/  FUNC7 (struct prison*,int /*<<< orphan*/ ,void**,struct linux_prison*) ; 
 void** FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct prison *pr, struct linux_prison **lprp)
{
	struct prison *ppr;
	struct linux_prison *lpr, *nlpr;
	void **rsv;

	/* If this prison already has Linux info, return that. */
	lpr = FUNC2(pr, &ppr);
	if (ppr == pr)
		goto done;
	/*
	 * Allocate a new info record.  Then check again, in case something
	 * changed during the allocation.
	 */
	FUNC5(&ppr->pr_mtx);
	nlpr = FUNC3(sizeof(struct linux_prison), M_PRISON, M_WAITOK);
	rsv = FUNC8(linux_osd_jail_slot);
	lpr = FUNC2(pr, &ppr);
	if (ppr == pr) {
		FUNC1(nlpr, M_PRISON);
		FUNC6(rsv);
		goto done;
	}
	/* Inherit the initial values from the ancestor. */
	FUNC4(&pr->pr_mtx);
	(void)FUNC7(pr, linux_osd_jail_slot, rsv, nlpr);
	FUNC0(lpr, nlpr, sizeof(*lpr));
	lpr = nlpr;
	FUNC5(&ppr->pr_mtx);
 done:
	if (lprp != NULL)
		*lprp = lpr;
	else
		FUNC5(&pr->pr_mtx);
}