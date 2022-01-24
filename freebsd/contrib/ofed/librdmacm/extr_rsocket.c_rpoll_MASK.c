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
typedef  scalar_t__ uint32_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct pollfd {int dummy; } ;
typedef  int /*<<< orphan*/  nfds_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pollfd*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ polling_time ; 
 struct pollfd* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pollfd*,struct pollfd*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pollfd*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pollfd*,struct pollfd*,int /*<<< orphan*/ ) ; 

int FUNC7(struct pollfd *fds, nfds_t nfds, int timeout)
{
	struct timeval s, e;
	struct pollfd *rfds;
	uint32_t poll_time = 0;
	int ret;

	do {
		ret = FUNC5(fds, nfds);
		if (ret || !timeout)
			return ret;

		if (!poll_time)
			FUNC1(&s, NULL);

		FUNC1(&e, NULL);
		poll_time = (e.tv_sec - s.tv_sec) * 1000000 +
			    (e.tv_usec - s.tv_usec) + 1;
	} while (poll_time <= polling_time);

	rfds = FUNC3(nfds);
	if (!rfds)
		return FUNC0(ENOMEM);

	do {
		ret = FUNC4(rfds, fds, nfds);
		if (ret)
			break;

		ret = FUNC2(rfds, nfds, timeout);
		if (ret <= 0)
			break;

		ret = FUNC6(rfds, fds, nfds);
	} while (!ret);

	return ret;
}