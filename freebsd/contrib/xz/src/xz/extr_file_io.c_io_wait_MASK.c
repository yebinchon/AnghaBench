#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pollfd {scalar_t__ revents; void* events; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  io_wait_ret ;
struct TYPE_3__ {int /*<<< orphan*/  dest_name; int /*<<< orphan*/  src_name; int /*<<< orphan*/  dest_fd; int /*<<< orphan*/  src_fd; } ;
typedef  TYPE_1__ file_pair ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  IO_WAIT_ERROR ; 
 int /*<<< orphan*/  IO_WAIT_MORE ; 
 int /*<<< orphan*/  IO_WAIT_TIMEOUT ; 
 void* POLLIN ; 
 void* POLLOUT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int flush_needed ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ opt_flush_timeout ; 
 int FUNC3 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ user_abort ; 
 int /*<<< orphan*/ * user_abort_pipe ; 

__attribute__((used)) static io_wait_ret
FUNC5(file_pair *pair, int timeout, bool is_reading)
{
	struct pollfd pfd[2];

	if (is_reading) {
		pfd[0].fd = pair->src_fd;
		pfd[0].events = POLLIN;
	} else {
		pfd[0].fd = pair->dest_fd;
		pfd[0].events = POLLOUT;
	}

	pfd[1].fd = user_abort_pipe[0];
	pfd[1].events = POLLIN;

	while (true) {
		const int ret = FUNC3(pfd, 2, timeout);

		if (user_abort)
			return IO_WAIT_ERROR;

		if (ret == -1) {
			if (errno == EINTR || errno == EAGAIN)
				continue;

			FUNC2(FUNC0("%s: poll() failed: %s"),
					is_reading ? pair->src_name
						: pair->dest_name,
					FUNC4(errno));
			return IO_WAIT_ERROR;
		}

		if (ret == 0) {
			FUNC1(opt_flush_timeout != 0);
			flush_needed = true;
			return IO_WAIT_TIMEOUT;
		}

		if (pfd[0].revents != 0)
			return IO_WAIT_MORE;
	}
}