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
typedef  int ssize_t ;

/* Variables and functions */
 int EAGAIN ; 
 int EINTR ; 
 int ENOTCONN ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MSG_WAITALL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SHUT_WR ; 
 scalar_t__ FUNC1 (int) ; 
 int errno ; 
 int FUNC2 (int,int*) ; 
 int FUNC3 (int,unsigned char*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 

int
FUNC5(int sock, unsigned char *data, size_t size, int *fdp)
{
	ssize_t done;

	FUNC0(sock >= 0);

	if (data == NULL) {
		/* The caller is just trying to decide about direction. */

		FUNC0(size == 0);

		if (FUNC4(sock, SHUT_WR) == -1)
			return (errno);
		return (0);
	}

	FUNC0(data != NULL);
	FUNC0(size > 0);

	do {
		done = FUNC3(sock, data, size, MSG_WAITALL);
	} while (done == -1 && errno == EINTR);
	if (done == 0) {
		return (ENOTCONN);
	} else if (done == -1) {
		/*
		 * If this is blocking socket and we got EAGAIN, this
		 * means the request timed out. Translate errno to
		 * ETIMEDOUT, to give administrator a hint to
		 * eventually increase timeout.
		 */
		if (errno == EAGAIN && FUNC1(sock))
			errno = ETIMEDOUT;
		return (errno);
	}
	if (fdp == NULL)
		return (0);
	return (FUNC2(sock, fdp));
}