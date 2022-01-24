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
 scalar_t__ EACCES ; 
 scalar_t__ ENXIO ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int
FUNC3(void)
{
	int exitcode, fd;

	fd = FUNC1("/dev/puffs", O_RDWR);
	if (fd != -1) {
		FUNC2("yes\n");
		FUNC0(fd);
		exitcode = EXIT_SUCCESS;
	} else {
		if (errno == ENXIO) {
			FUNC2("enxio\n");
			exitcode = EXIT_SUCCESS;
		} else if (errno == EACCES) {
			FUNC2("eacces\n");
			exitcode = EXIT_SUCCESS;
		} else {
			FUNC2("failed\n");
			exitcode = EXIT_FAILURE;
		}
	}

	return exitcode;
}