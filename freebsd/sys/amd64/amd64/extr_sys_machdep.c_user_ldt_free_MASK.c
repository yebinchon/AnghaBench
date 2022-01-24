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
struct thread {struct proc* td_proc; } ;
struct proc_ldt {int dummy; } ;
struct mdproc {int /*<<< orphan*/  md_ldt_sd; struct proc_ldt* md_ldt; } ;
struct proc {struct mdproc p_md; } ;

/* Variables and functions */
 int /*<<< orphan*/  GNULL_SEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEL_KPL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  dt_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct proc_ldt*) ; 

void
FUNC9(struct thread *td)
{
	struct proc *p = td->td_proc;
	struct mdproc *mdp = &p->p_md;
	struct proc_ldt *pldt;

	FUNC6(&dt_lock);
	if ((pldt = mdp->md_ldt) == NULL) {
		FUNC7(&dt_lock);
		return;
	}

	FUNC3();
	mdp->md_ldt = NULL;
	FUNC1();
	FUNC2(&mdp->md_ldt_sd, sizeof(mdp->md_ldt_sd));
	if (td == curthread)
		FUNC5(FUNC0(GNULL_SEL, SEL_KPL));
	FUNC4();
	FUNC8(pldt);
}