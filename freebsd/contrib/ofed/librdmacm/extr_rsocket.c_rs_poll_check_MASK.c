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
struct rsocket {int dummy; } ;
struct pollfd {scalar_t__ revents; int /*<<< orphan*/  events; int /*<<< orphan*/  fd; } ;
typedef  int nfds_t ;

/* Variables and functions */
 int /*<<< orphan*/  idm ; 
 struct rsocket* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pollfd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rs_poll_all ; 
 scalar_t__ FUNC2 (struct rsocket*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pollfd *fds, nfds_t nfds)
{
	struct rsocket *rs;
	int i, cnt = 0;

	for (i = 0; i < nfds; i++) {
		rs = FUNC0(&idm, fds[i].fd);
		if (rs)
			fds[i].revents = FUNC2(rs, fds[i].events, 1, rs_poll_all);
		else
			FUNC1(&fds[i], 1, 0);

		if (fds[i].revents)
			cnt++;
	}
	return cnt;
}