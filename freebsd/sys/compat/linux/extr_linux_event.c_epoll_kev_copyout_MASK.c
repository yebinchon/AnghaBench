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
struct linux_pemuldata {struct epoll_emuldata* epoll; } ;
struct kevent {int ident; } ;
struct epoll_event {int /*<<< orphan*/  data; } ;
struct epoll_emuldata {int fdc; int /*<<< orphan*/ * udata; } ;
struct epoll_copyout_args {int leventlist; int count; int error; int /*<<< orphan*/  p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct linux_pemuldata*) ; 
 int /*<<< orphan*/  FUNC2 (struct linux_pemuldata*) ; 
 int /*<<< orphan*/  M_EPOLL ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC3 (struct epoll_event*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct epoll_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kevent*,struct epoll_event*) ; 
 struct epoll_event* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 struct linux_pemuldata* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(void *arg, struct kevent *kevp, int count)
{
	struct epoll_copyout_args *args;
	struct linux_pemuldata *pem;
	struct epoll_emuldata *emd;
	struct epoll_event *eep;
	int error, fd, i;

	args = (struct epoll_copyout_args*) arg;
	eep = FUNC6(sizeof(*eep) * count, M_EPOLL, M_WAITOK | M_ZERO);

	pem = FUNC7(args->p);
	FUNC0(pem != NULL, ("epoll proc emuldata not found.\n"));
	FUNC1(pem);
	emd = pem->epoll;
	FUNC0(emd != NULL, ("epoll proc epolldata not found.\n"));

	for (i = 0; i < count; i++) {
		FUNC5(&kevp[i], &eep[i]);

		fd = kevp[i].ident;
		FUNC0(fd <= emd->fdc, ("epoll user data vector"
						    " is too small.\n"));
		eep[i].data = emd->udata[fd];
	}
	FUNC2(pem);

	error = FUNC3(eep, args->leventlist, count * sizeof(*eep));
	if (error == 0) {
		args->leventlist += count;
		args->count += count;
	} else if (args->error == 0)
		args->error = error;

	FUNC4(eep, M_EPOLL);
	return (error);
}