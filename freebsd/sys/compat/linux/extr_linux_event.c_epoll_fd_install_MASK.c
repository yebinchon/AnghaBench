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
struct proc {int dummy; } ;
struct linux_pemuldata {struct epoll_emuldata* epoll; } ;
struct epoll_emuldata {int fdc; int /*<<< orphan*/ * udata; } ;
typedef  int /*<<< orphan*/  epoll_udata_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct linux_pemuldata*) ; 
 int /*<<< orphan*/  FUNC3 (struct linux_pemuldata*) ; 
 int /*<<< orphan*/  M_EPOLL ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct epoll_emuldata* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct linux_pemuldata* FUNC5 (struct proc*) ; 
 struct epoll_emuldata* FUNC6 (struct epoll_emuldata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct thread *td, int fd, epoll_udata_t udata)
{
	struct linux_pemuldata *pem;
	struct epoll_emuldata *emd;
	struct proc *p;

	p = td->td_proc;

	pem = FUNC5(p);
	FUNC1(pem != NULL, ("epoll proc emuldata not found.\n"));

	FUNC2(pem);
	if (pem->epoll == NULL) {
		emd = FUNC4(FUNC0(fd), M_EPOLL, M_WAITOK);
		emd->fdc = fd;
		pem->epoll = emd;
	} else {
		emd = pem->epoll;
		if (fd > emd->fdc) {
			emd = FUNC6(emd, FUNC0(fd), M_EPOLL, M_WAITOK);
			emd->fdc = fd;
			pem->epoll = emd;
		}
	}
	emd->udata[fd] = udata;
	FUNC3(pem);
}