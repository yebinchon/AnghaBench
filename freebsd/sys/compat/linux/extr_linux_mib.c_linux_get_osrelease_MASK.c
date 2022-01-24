#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thread {TYPE_1__* td_ucred; } ;
struct prison {int /*<<< orphan*/  pr_mtx; } ;
struct linux_prison {int /*<<< orphan*/  pr_osrelease; } ;
struct TYPE_2__ {int /*<<< orphan*/  cr_prison; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MAX_UTSNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct linux_prison* FUNC1 (int /*<<< orphan*/ ,struct prison**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct thread *td, char *dst)
{
	struct prison *pr;
	struct linux_prison *lpr;

	lpr = FUNC1(td->td_ucred->cr_prison, &pr);
	FUNC0(lpr->pr_osrelease, dst, LINUX_MAX_UTSNAME);
	FUNC2(&pr->pr_mtx);
}