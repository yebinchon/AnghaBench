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
struct fd_info {int dupfd; scalar_t__ type; int fd; int /*<<< orphan*/  refcnt; } ;
struct TYPE_2__ {int (* close ) (int) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ fd_rsocket ; 
 int /*<<< orphan*/  FUNC1 (struct fd_info*) ; 
 int /*<<< orphan*/  idm ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct fd_info* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int) ; 
 TYPE_1__ real ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 

int FUNC9(int socket)
{
	struct fd_info *fdi;
	int ret;

	FUNC4();
	fdi = FUNC3(&idm, socket);
	if (!fdi)
		return real.close(socket);

	if (fdi->dupfd != -1) {
		ret = FUNC9(fdi->dupfd);
		if (ret)
			return ret;
	}

	if (FUNC0(&fdi->refcnt, 1) != 1)
		return 0;

	FUNC2(&idm, socket);
	real.close(socket);
	ret = (fdi->type == fd_rsocket) ? FUNC5(fdi->fd) : real.close(fdi->fd);
	FUNC1(fdi);
	return ret;
}