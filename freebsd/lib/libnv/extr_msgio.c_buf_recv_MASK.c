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
 scalar_t__ EINTR ; 
 scalar_t__ ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int,unsigned char*,size_t,int /*<<< orphan*/ ) ; 

int
FUNC3(int sock, void *buf, size_t size)
{
	ssize_t done;
	unsigned char *ptr;

	FUNC0(sock >= 0);
	FUNC0(buf != NULL);

	ptr = buf;
	while (size > 0) {
		FUNC1(sock, true);
		done = FUNC2(sock, ptr, size, 0);
		if (done == -1) {
			if (errno == EINTR)
				continue;
			return (-1);
		} else if (done == 0) {
			errno = ENOTCONN;
			return (-1);
		}
		size -= done;
		ptr += done;
	}

	return (0);
}