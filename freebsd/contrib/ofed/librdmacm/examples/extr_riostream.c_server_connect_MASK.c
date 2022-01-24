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
struct pollfd {int /*<<< orphan*/  events; scalar_t__ fd; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  POLLIN ; 
 int FUNC0 (struct pollfd*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ lrs ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  poll_timeout ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ rs ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ use_async ; 

__attribute__((used)) static int FUNC4(void)
{
	struct pollfd fds;
	int ret = 0;

	FUNC3(lrs);
	do {
		if (use_async) {
			fds.fd = lrs;
			fds.events = POLLIN;

			ret = FUNC0(&fds, poll_timeout);
			if (ret) {
				FUNC1("rpoll");
				return ret;
			}
		}

		rs = FUNC2(lrs, NULL, NULL);
	} while (rs < 0 && (errno == EAGAIN || errno == EWOULDBLOCK));
	if (rs < 0) {
		FUNC1("raccept");
		return rs;
	}

	FUNC3(rs);
	return ret;
}