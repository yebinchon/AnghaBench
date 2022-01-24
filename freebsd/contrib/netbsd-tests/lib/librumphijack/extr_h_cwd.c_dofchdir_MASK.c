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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(const char *path, const char *errmsg)
{
	int fd;

	fd = FUNC3(path, O_RDONLY);
	if (fd == -1)
		FUNC1(EXIT_FAILURE, "open %s", errmsg);
	if (FUNC2(fd) == -1)
		FUNC1(EXIT_FAILURE, "fchdir %s", errmsg);
	FUNC0(fd);
}