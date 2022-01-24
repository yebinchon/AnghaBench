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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int) ; 
 int FUNC2 (int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC3(const char *path, int flags)
{
	int fd;
	int rc;

	if ((fd = FUNC1(path, flags)) >= 0) {
		if ((rc = FUNC2(fd, path, 0, NULL)) < 0) {
			FUNC0(fd);
			fd = rc;
		}
	}
	return (fd);
}