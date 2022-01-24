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
struct rsocket {scalar_t__ type; int /*<<< orphan*/  cq_wait_lock; } ;
struct pollfd {scalar_t__ revents; int /*<<< orphan*/  events; int /*<<< orphan*/  fd; } ;
typedef  int nfds_t ;

/* Variables and functions */
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct rsocket*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  idm ; 
 struct rsocket* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rsocket*) ; 
 int /*<<< orphan*/  rs_poll_all ; 
 scalar_t__ FUNC5 (struct rsocket*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pollfd *rfds, struct pollfd *fds, nfds_t nfds)
{
	struct rsocket *rs;
	int i, cnt = 0;

	for (i = 0; i < nfds; i++) {
		if (!rfds[i].revents)
			continue;

		rs = FUNC3(&idm, fds[i].fd);
		if (rs) {
			FUNC1(&rs->cq_wait_lock);
			if (rs->type == SOCK_STREAM)
				FUNC4(rs);
			else
				FUNC0(rs);
			FUNC2(&rs->cq_wait_lock);
			fds[i].revents = FUNC5(rs, fds[i].events, 1, rs_poll_all);
		} else {
			fds[i].revents = rfds[i].revents;
		}
		if (fds[i].revents)
			cnt++;
	}
	return cnt;
}