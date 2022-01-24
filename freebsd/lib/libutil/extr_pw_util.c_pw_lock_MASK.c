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
 int lockfd ; 
 char* masterpasswd ; 

int
FUNC5(void)
{

	if (*masterpasswd == '\0')
		return (-1);

	/*
	 * If the master password file doesn't exist, the system is hosed.
	 * Might as well try to build one.  Set the close-on-exec bit so
	 * that users can't get at the encrypted passwords while editing.
	 * Open should allow flock'ing the file; see 4.4BSD.	XXX
	 */
	for (;;) {
		struct stat st;

		lockfd = FUNC3(masterpasswd, O_RDONLY|O_NONBLOCK|O_CLOEXEC, 0);
		if (lockfd == -1) {
			if (errno == EWOULDBLOCK) {
				FUNC2(1, "the password db file is busy");
			} else {
				FUNC1(1, "could not lock the passwd file: ");
			}
		}

		/*
		 * If the password file was replaced while we were trying to
		 * get the lock, our hardlink count will be 0 and we have to
		 * close and retry.
		 */
		if (FUNC4(lockfd, &st) == -1)
			FUNC1(1, "fstat() failed: ");
		if (st.st_nlink != 0)
			break;
		FUNC0(lockfd);
		lockfd = -1;
	}
	return (lockfd);
}