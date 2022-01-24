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
struct stat {scalar_t__ st_nlink; } ;

/* Variables and functions */
 scalar_t__ EWOULDBLOCK ; 
 int O_CLOEXEC ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,struct stat*) ; 
 char* group_file ; 
 int lockfd ; 

int
FUNC5(void)
{
	if (*group_file == '\0')
		return (-1);

	for (;;) {
		struct stat st;

		lockfd = FUNC3(group_file, O_RDONLY|O_NONBLOCK|O_CLOEXEC, 0);
		if (lockfd == -1) {
			if (errno == EWOULDBLOCK) {
				FUNC2(1, "the group file is busy");
			} else {
				FUNC1(1, "could not lock the group file: ");
			}
		}
		if (FUNC4(lockfd, &st) == -1)
			FUNC1(1, "fstat() failed: ");
		if (st.st_nlink != 0)
			break;
		FUNC0(lockfd);
		lockfd = -1;
	}
	return (lockfd);
}