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
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  quittingtime ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,int,int) ; 
 int FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  wrkpid ; 

__attribute__((used)) static void *
FUNC5(void *arg)
{
	int fd;

	FUNC1(wrkpid);

	fd = FUNC3("/file", O_CREAT | O_RDWR, 0777);
	if (fd == -1)
		FUNC0("creat");
	FUNC2(fd);

	while (!quittingtime) {
		if (FUNC4("/file", "/dir/file") == -1)
			FUNC0("rename 1");
		if (FUNC4("/dir/file", "/file") == -1)
			FUNC0("rename 2");
	}

	return NULL;
}