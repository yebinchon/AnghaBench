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
struct fd_info {scalar_t__ state; int dupfd; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  type; int /*<<< orphan*/  fd; } ;
struct TYPE_2__ {int (* dup2 ) (int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 struct fd_info* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ fd_fork_active ; 
 scalar_t__ fd_fork_passive ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  idm ; 
 struct fd_info* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,struct fd_info*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  mut ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_1__ real ; 
 int FUNC13 (int,int) ; 

int FUNC14(int oldfd, int newfd)
{
	struct fd_info *oldfdi, *newfdi;
	int ret;

	FUNC10();
	oldfdi = FUNC8(&idm, oldfd);
	if (oldfdi) {
		if (oldfdi->state == fd_fork_passive)
			FUNC7(oldfd);
		else if (oldfdi->state == fd_fork_active)
			FUNC6(oldfd);
	}

	newfdi = FUNC8(&idm, newfd);
	if (newfdi) {
		 /* newfd cannot have been dup'ed directly */
		if (FUNC2(&newfdi->refcnt) > 1)
			return FUNC0(EBUSY);
		FUNC5(newfd);
	}

	ret = real.dup2(oldfd, newfd);
	if (!oldfdi || ret != newfd)
		return ret;

	newfdi = FUNC4(1, sizeof(*newfdi));
	if (!newfdi) {
		FUNC5(newfd);
		return FUNC0(ENOMEM);
	}

	FUNC11(&mut);
	FUNC9(&idm, newfd, newfdi);
	FUNC12(&mut);

	newfdi->fd = oldfdi->fd;
	newfdi->type = oldfdi->type;
	if (oldfdi->dupfd != -1) {
		newfdi->dupfd = oldfdi->dupfd;
		oldfdi = FUNC8(&idm, oldfdi->dupfd);
	} else {
		newfdi->dupfd = oldfd;
	}
	FUNC3(&newfdi->refcnt, 1);
	FUNC1(&oldfdi->refcnt, 1);
	return newfd;
}