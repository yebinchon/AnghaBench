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
struct flock {int l_start; int l_len; int /*<<< orphan*/  l_whence; int /*<<< orphan*/  l_type; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  F_RDLCK ; 
 int /*<<< orphan*/  F_SETLKW ; 
 int /*<<< orphan*/  F_UNLCK ; 
 int /*<<< orphan*/  F_WRLCK ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct flock*) ; 
 int filesize ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  lockfile ; 
 int nlocks ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  sleeptime ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(int id)
{
	int i, fd;

	FUNC7(FUNC3());

	fd = FUNC4 (lockfile, O_RDWR, 0);
        
	if (fd < 0)
		FUNC1(1, "%s", lockfile);

	FUNC5("%d: start\n", id);

	for (i = 0; i < nlocks; i++) {
		struct flock fl;

		fl.l_start = FUNC6() % filesize;
		fl.l_len = FUNC6() % filesize;
		switch (FUNC6() % 3) {
		case 0:
			fl.l_type = F_RDLCK;
			break;
		case 1:
			fl.l_type = F_WRLCK;
			break;
		case 2:
			fl.l_type = F_UNLCK;
			break;
		}
		fl.l_whence = SEEK_SET;

		(void)FUNC2(fd, F_SETLKW, &fl);

		if (FUNC8(sleeptime) < 0) 
#if defined(__FreeBSD__)
		  if (errno != EINTR)
#endif
		  FUNC1(1, "usleep");
	}
	FUNC5("%d: done\n", id);
	FUNC0 (fd);
}