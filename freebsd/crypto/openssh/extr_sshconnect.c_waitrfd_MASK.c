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
struct pollfd {int fd; int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  POLLIN ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,int*) ; 
 int FUNC2 (struct pollfd*,int,int) ; 

__attribute__((used)) static int
FUNC3(int fd, int *timeoutp)
{
	struct pollfd pfd;
	struct timeval t_start;
	int oerrno, r;

	FUNC0(&t_start);
	pfd.fd = fd;
	pfd.events = POLLIN;
	for (; *timeoutp >= 0;) {
		r = FUNC2(&pfd, 1, *timeoutp);
		oerrno = errno;
		FUNC1(&t_start, timeoutp);
		errno = oerrno;
		if (r > 0)
			return 0;
		else if (r == -1 && errno != EAGAIN)
			return -1;
		else if (r == 0)
			break;
	}
	/* timeout */
	errno = ETIMEDOUT;
	return -1;
}