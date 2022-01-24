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
struct linux_prison {int /*<<< orphan*/  pr_osname; } ;
struct TYPE_2__ {int /*<<< orphan*/  cr_prison; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MAX_UTSNAME ; 
 struct linux_prison* FUNC0 (int /*<<< orphan*/ ,struct prison**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct thread *td, char *osname)
{
	struct prison *pr;
	struct linux_prison *lpr;

	lpr = FUNC0(td->td_ucred->cr_prison, &pr);
	FUNC2(lpr->pr_osname, osname, LINUX_MAX_UTSNAME);
	FUNC1(&pr->pr_mtx);

	return (0);
}