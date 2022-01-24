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

/* Variables and functions */
 int EACCES ; 
 int EPERM ; 
 int /*<<< orphan*/  PRIO_PROCESS ; 
 int errno ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC2(int incr)
{
	int saverrno, prio;

	saverrno = errno;
	errno = 0;
	prio = FUNC0(PRIO_PROCESS, 0);
	if (prio == -1 && errno != 0)
		return (-1);
	if (FUNC1(PRIO_PROCESS, 0, prio + incr) == -1) {
		if (errno == EACCES)
			errno = EPERM;
		return (-1);
	}
	errno = saverrno;
	return (0);
}