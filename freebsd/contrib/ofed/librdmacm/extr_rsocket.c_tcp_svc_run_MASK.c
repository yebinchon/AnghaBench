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
typedef  scalar_t__ uint32_t ;
struct rs_svc_msg {int status; } ;
struct rs_svc {int cnt; TYPE_1__** rss; int /*<<< orphan*/ * sock; scalar_t__* contexts; } ;
struct pollfd {scalar_t__ revents; int /*<<< orphan*/  events; int /*<<< orphan*/  fd; } ;
struct TYPE_2__ {scalar_t__ keepalive_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  FUNC0 (struct pollfd*,int,int) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (struct rs_svc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rs_svc*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__* tcp_svc_timeouts ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct rs_svc_msg*,int) ; 

__attribute__((used)) static void *FUNC6(void *arg)
{
	struct rs_svc *svc = arg;
	struct rs_svc_msg msg;
	struct pollfd fds;
	uint32_t now, next_timeout;
	int i, ret, timeout;

	ret = FUNC2(svc, 16);
	if (ret) {
		msg.status = ret;
		FUNC5(svc->sock[1], &msg, sizeof msg);
		return (void *) (uintptr_t) ret;
	}

	tcp_svc_timeouts = svc->contexts;
	fds.fd = svc->sock[1];
	fds.events = POLLIN;
	timeout = -1;
	do {
		FUNC0(&fds, 1, timeout * 1000);
		if (fds.revents)
			FUNC3(svc);

		now = FUNC1();
		next_timeout = ~0;
		for (i = 1; i <= svc->cnt; i++) {
			if (tcp_svc_timeouts[i] <= now) {
				FUNC4(svc->rss[i]);
				tcp_svc_timeouts[i] =
					now + svc->rss[i]->keepalive_time;
			}
			if (tcp_svc_timeouts[i] < next_timeout)
				next_timeout = tcp_svc_timeouts[i];
		}
		timeout = (int) (next_timeout - now);
	} while (svc->cnt >= 1);

	return NULL;
}