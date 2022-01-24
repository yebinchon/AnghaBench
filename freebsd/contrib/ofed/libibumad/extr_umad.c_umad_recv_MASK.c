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
struct ib_user_mad {int agent_id; int length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,...) ; 
 int EINVAL ; 
 int EIO ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC1 (char*,int,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int FUNC3 (int,int) ; 
 int errno ; 
 int FUNC4 (int,void*,int) ; 
 int FUNC5 () ; 

int FUNC6(int fd, void *umad, int *length, int timeout_ms)
{
	struct ib_user_mad *mad = umad;
	int n;

	errno = 0;
	FUNC1("fd %d umad %p timeout %u", fd, umad, timeout_ms);

	if (!umad || !length) {
		errno = EINVAL;
		return -EINVAL;
	}

	if (timeout_ms && (n = FUNC3(fd, timeout_ms)) < 0) {
		if (!errno)
			errno = -n;
		return n;
	}

	n = FUNC4(fd, umad, FUNC5() + *length);

	FUNC2(umad, FUNC5() + *length);

	if ((n >= 0) && (n <= FUNC5() + *length)) {
		FUNC0("mad received by agent %d length %d", mad->agent_id, n);
		if (n > FUNC5())
			*length = n - FUNC5();
		else
			*length = 0;
		return mad->agent_id;
	}

	if (n == -EWOULDBLOCK) {
		if (!errno)
			errno = EWOULDBLOCK;
		return n;
	}

	FUNC0("read returned %zu > sizeof umad %zu + length %d (%m)",
	      mad->length - FUNC5(), FUNC5(), *length);

	*length = mad->length - FUNC5();
	if (!errno)
		errno = EIO;
	return -errno;
}