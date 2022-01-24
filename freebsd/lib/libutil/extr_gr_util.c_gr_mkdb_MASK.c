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
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  group_dir ; 
 int /*<<< orphan*/  group_file ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tempname ; 

int
FUNC5(void)
{
	int fd;

	if (FUNC0(tempname, 0644) != 0)
		return (-1);

	if (FUNC4(tempname, group_file) != 0)
		return (-1);

	/*
	 * Make sure new group file is safe on disk. To improve performance we
	 * will call fsync() to the directory where file lies
	 */
	if ((fd = FUNC3(group_dir, O_RDONLY|O_DIRECTORY)) == -1)
		return (-1);

	if (FUNC2(fd) != 0) {
		FUNC1(fd);
		return (-1);
	}

	FUNC1(fd);
	return(0);
}