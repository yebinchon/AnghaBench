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
struct timeval {int dummy; } ;
struct pollfd {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct pollfd* FUNC2 (int) ; 
 int FUNC3 (struct pollfd*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pollfd*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC6 (struct pollfd*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC7(int nfds, fd_set *readfds, fd_set *writefds,
	   fd_set *exceptfds, struct timeval *timeout)
{
	struct pollfd *fds;
	int ret;

	fds = FUNC2(nfds);
	if (!fds)
		return FUNC0(ENOMEM);

	FUNC6(fds, &nfds, readfds, writefds, exceptfds);
	ret = FUNC3(fds, nfds, FUNC5(timeout));

	if (readfds)
		FUNC1(readfds);
	if (writefds)
		FUNC1(writefds);
	if (exceptfds)
		FUNC1(exceptfds);

	if (ret > 0)
		ret = FUNC4(fds, nfds, readfds, writefds, exceptfds);

	return ret;
}