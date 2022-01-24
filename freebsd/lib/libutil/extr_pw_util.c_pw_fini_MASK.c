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
 int /*<<< orphan*/  SIGCONT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int editpid ; 
 int errno ; 
 scalar_t__ initialized ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int lockfd ; 
 char* tempname ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int*,int /*<<< orphan*/ ) ; 

void
FUNC4(void)
{
	int serrno, status;

	if (!initialized)
		return;
	initialized = 0;
	serrno = errno;
	if (editpid != -1) {
		FUNC1(editpid, SIGTERM);
		FUNC1(editpid, SIGCONT);
		FUNC3(editpid, &status, 0);
		editpid = -1;
	}
	if (*tempname != '\0') {
		FUNC2(tempname);
		*tempname = '\0';
	}
	if (lockfd != -1)
		FUNC0(lockfd);
	errno = serrno;
}