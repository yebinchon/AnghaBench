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
struct thread {struct proc* td_proc; struct linux_emuldata* td_emuldata; int /*<<< orphan*/  td_tid; } ;
struct proc {int /*<<< orphan*/  p_pid; struct linux_pemuldata* p_emuldata; } ;
struct linux_pemuldata {struct epoll_emuldata* epoll; scalar_t__ persona; int /*<<< orphan*/  pem_sx; } ;
struct linux_emuldata {int /*<<< orphan*/ * child_set_tid; int /*<<< orphan*/ * child_clear_tid; int /*<<< orphan*/ * robust_futexes; scalar_t__ flags; int /*<<< orphan*/  em_tid; } ;
struct epoll_emuldata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int LINUX_CLONE_THREAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_EPOLL ; 
 int /*<<< orphan*/  M_LINUX ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 struct linux_emuldata* FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct epoll_emuldata*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 struct linux_pemuldata* FUNC5 (struct proc*) ; 
 int /*<<< orphan*/  proc_init ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

void
FUNC7(struct thread *td, struct thread *newtd, int flags)
{
	struct linux_emuldata *em;
	struct linux_pemuldata *pem;
	struct epoll_emuldata *emd;
	struct proc *p;

	if (newtd != NULL) {
		p = newtd->td_proc;

		/* non-exec call */
		em = FUNC4(sizeof(*em), M_TEMP, M_WAITOK | M_ZERO);
		if (flags & LINUX_CLONE_THREAD) {
			FUNC1(proc_init, "thread newtd(%d)",
			    newtd->td_tid);

			em->em_tid = newtd->td_tid;
		} else {
			FUNC1(proc_init, "fork newtd(%d)", p->p_pid);

			em->em_tid = p->p_pid;

			pem = FUNC4(sizeof(*pem), M_LINUX, M_WAITOK | M_ZERO);
			FUNC6(&pem->pem_sx, "lpemlk");
			p->p_emuldata = pem;
		}
		newtd->td_emuldata = em;
	} else {
		p = td->td_proc;

		/* exec */
		FUNC1(proc_init, "exec newtd(%d)", p->p_pid);

		/* lookup the old one */
		em = FUNC2(td);
		FUNC0(em != NULL, ("proc_init: emuldata not found in exec case.\n"));

		em->em_tid = p->p_pid;
		em->flags = 0;
		em->robust_futexes = NULL;
		em->child_clear_tid = NULL;
		em->child_set_tid = NULL;

		 /* epoll should be destroyed in a case of exec. */
		pem = FUNC5(p);
		FUNC0(pem != NULL, ("proc_exit: proc emuldata not found.\n"));
		pem->persona = 0;
		if (pem->epoll != NULL) {
			emd = pem->epoll;
			pem->epoll = NULL;
			FUNC3(emd, M_EPOLL);
		}
	}

}