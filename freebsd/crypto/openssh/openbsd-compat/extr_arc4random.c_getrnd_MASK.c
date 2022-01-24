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
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SSH_RANDOM_DEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void
FUNC6(u_char *s, size_t len)
{
	int fd;
	ssize_t r;
	size_t o = 0;

#ifdef HAVE_GETRANDOM
	if ((r = getrandom(s, len, 0)) > 0 && (size_t)r == len)
		return;
#endif /* HAVE_GETRANDOM */

	if ((fd = FUNC3(SSH_RANDOM_DEV, O_RDONLY)) == -1)
		FUNC1("Couldn't open %s: %s", SSH_RANDOM_DEV, FUNC5(errno));
	while (o < len) {
		r = FUNC4(fd, s + o, len - o);
		if (r < 0) {
			if (errno == EAGAIN || errno == EINTR ||
			    errno == EWOULDBLOCK)
				continue;
			FUNC1("read %s: %s", SSH_RANDOM_DEV, FUNC5(errno));
		}
		o += r;
	}
	FUNC0(fd);
}