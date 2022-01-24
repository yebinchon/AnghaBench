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
struct pollfd {int /*<<< orphan*/  events; int /*<<< orphan*/  fd; } ;
struct message {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  POLLOUT ; 
 int FUNC0 (struct pollfd*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  flags ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  poll_timeout ; 
 int /*<<< orphan*/  rs ; 
 int FUNC2 (int /*<<< orphan*/ ,struct message*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ use_async ; 

__attribute__((used)) static ssize_t FUNC3(struct message *msg, size_t size)
{
	struct pollfd fds;
	int ret;

	if (use_async) {
		fds.fd = rs;
		fds.events = POLLOUT;
	}

	do {
		if (use_async) {
			ret = FUNC0(&fds, poll_timeout);
			if (ret)
				return ret;
		}

		ret = FUNC2(rs, msg, size, flags);
	} while (ret < 0 && (errno == EWOULDBLOCK || errno == EAGAIN));

	if (ret < 0)
		FUNC1("rsend");

	return ret;
}