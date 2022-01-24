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
typedef  int vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
struct user_segment_descriptor {int dummy; } ;
struct soft_segment_descriptor {int ssd_limit; int ssd_p; scalar_t__ ssd_gran; scalar_t__ ssd_def32; scalar_t__ ssd_long; int /*<<< orphan*/  ssd_dpl; int /*<<< orphan*/  ssd_type; scalar_t__ ssd_base; } ;
struct proc_ldt {int ldt_refcnt; scalar_t__ ldt_base; } ;
struct mdproc {struct proc_ldt* md_ldt; int /*<<< orphan*/  md_ldt_sd; } ;
struct proc {int /*<<< orphan*/  p_vmspace; struct mdproc p_md; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_SUBPROC ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  SDT_SYSLDT ; 
 int /*<<< orphan*/  SEL_KPL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  dt_lock ; 
 int /*<<< orphan*/  FUNC4 (struct proc_ldt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (int,int) ; 
 struct proc_ldt* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int max_ldt_segment ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ set_user_ldt_rv ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,void (*) (void*),int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct soft_segment_descriptor*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct proc_ldt*) ; 

struct proc_ldt *
FUNC16(struct proc *p, int force)
{
	struct proc_ldt *pldt, *new_ldt;
	struct mdproc *mdp;
	struct soft_segment_descriptor sldt;
	vm_offset_t sva;
	vm_size_t sz;

	FUNC8(&dt_lock, MA_OWNED);
	mdp = &p->p_md;
	if (!force && mdp->md_ldt != NULL)
		return (mdp->md_ldt);
	FUNC10(&dt_lock);
	new_ldt = FUNC7(sizeof(struct proc_ldt), M_SUBPROC, M_WAITOK);
	sz = max_ldt_segment * sizeof(struct user_segment_descriptor);
	sva = FUNC6(sz, M_WAITOK | M_ZERO);
	new_ldt->ldt_base = (caddr_t)sva;
	FUNC11(sva, sva + sz, false);
	new_ldt->ldt_refcnt = 1;
	sldt.ssd_base = sva;
	sldt.ssd_limit = sz - 1;
	sldt.ssd_type = SDT_SYSLDT;
	sldt.ssd_dpl = SEL_KPL;
	sldt.ssd_p = 1;
	sldt.ssd_long = 0;
	sldt.ssd_def32 = 0;
	sldt.ssd_gran = 0;
	FUNC9(&dt_lock);
	pldt = mdp->md_ldt;
	if (pldt != NULL && !force) {
		FUNC12(sva, sva + sz);
		FUNC5(sva, sz);
		FUNC4(new_ldt, M_SUBPROC);
		return (pldt);
	}

	if (pldt != NULL) {
		FUNC1(pldt->ldt_base, new_ldt->ldt_base, max_ldt_segment *
		    sizeof(struct user_segment_descriptor));
		FUNC15(pldt);
	}
	FUNC2();
	FUNC14(&sldt, &p->p_md.md_ldt_sd);
	FUNC0();
	mdp->md_ldt = new_ldt;
	FUNC3();
	FUNC13(NULL, (void (*)(void *))set_user_ldt_rv, NULL,
	    p->p_vmspace);

	return (mdp->md_ldt);
}