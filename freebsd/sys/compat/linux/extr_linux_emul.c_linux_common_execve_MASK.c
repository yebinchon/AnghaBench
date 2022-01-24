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
struct vmspace {int dummy; } ;
struct thread {int /*<<< orphan*/ * td_emuldata; struct proc* td_proc; } ;
struct proc {int /*<<< orphan*/ * p_emuldata; } ;
struct linux_pemuldata {struct linux_pemuldata* epoll; } ;
struct linux_emuldata {struct linux_emuldata* epoll; } ;
struct image_args {int dummy; } ;
struct epoll_emuldata {struct epoll_emuldata* epoll; } ;

/* Variables and functions */
 int EJUSTRETURN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_EPOLL ; 
 int /*<<< orphan*/  M_LINUX ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 scalar_t__ SV_ABI_LINUX ; 
 scalar_t__ FUNC3 () ; 
 struct linux_pemuldata* FUNC4 (struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct linux_pemuldata*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct thread*,struct image_args*,int /*<<< orphan*/ *) ; 
 struct linux_pemuldata* FUNC7 (struct proc*) ; 
 int /*<<< orphan*/  FUNC8 (struct thread*,int,struct vmspace*) ; 
 int FUNC9 (struct thread*,struct vmspace**) ; 

int
FUNC10(struct thread *td, struct image_args *eargs)
{
	struct linux_pemuldata *pem;
	struct epoll_emuldata *emd;
	struct vmspace *oldvmspace;
	struct linux_emuldata *em;
	struct proc *p;
	int error;

	p = td->td_proc;

	error = FUNC9(td, &oldvmspace);
	if (error != 0)
		return (error);

	error = FUNC6(td, eargs, NULL);
	FUNC8(td, error, oldvmspace);
	if (error != EJUSTRETURN)
		return (error);

	/*
	 * In a case of transition from Linux binary execing to
	 * FreeBSD binary we destroy Linux emuldata thread & proc entries.
	 */
	if (FUNC3() != SV_ABI_LINUX) {
		FUNC1(p);
		em = FUNC4(td);
		FUNC0(em != NULL, ("proc_exec: thread emuldata not found.\n"));
		td->td_emuldata = NULL;

		pem = FUNC7(p);
		FUNC0(pem != NULL, ("proc_exec: proc pemuldata not found.\n"));
		p->p_emuldata = NULL;
		FUNC2(p);

		if (pem->epoll != NULL) {
			emd = pem->epoll;
			pem->epoll = NULL;
			FUNC5(emd, M_EPOLL);
		}

		FUNC5(em, M_TEMP);
		FUNC5(pem, M_LINUX);
	}
	return (EJUSTRETURN);
}