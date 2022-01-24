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
 scalar_t__ EEXIST ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  quittingtime ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  wrkpid ; 

__attribute__((used)) static void *
FUNC5(void *arg)
{
	int fd;

	FUNC1(wrkpid);

	while (!quittingtime) {
		fd = FUNC3("rename.test1",
		    O_WRONLY|O_CREAT|O_TRUNC, 0666);
		if (fd == -1 && errno != EEXIST)
			FUNC0("create");
		FUNC4("rename.test1");
		FUNC2(fd);
	}

	return NULL;
}