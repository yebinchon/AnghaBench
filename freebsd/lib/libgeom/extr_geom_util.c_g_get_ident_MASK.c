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
 int /*<<< orphan*/  DIOCGIDENT ; 
 int DISK_IDENT_SIZE ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 size_t FUNC1 (char*,char*,size_t) ; 

int
FUNC2(int fd, char *ident, size_t size)
{
	char lident[DISK_IDENT_SIZE];

	if (FUNC0(fd, DIOCGIDENT, lident) == -1)
		return (-1);
	if (lident[0] == '\0') {
		errno = ENOENT;
		return (-1);
	}
	if (FUNC1(ident, lident, size) >= size) {
		errno = ENAMETOOLONG;
		return (-1);
	}
	return (0);
}