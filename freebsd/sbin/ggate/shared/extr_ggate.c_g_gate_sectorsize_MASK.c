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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGSECTORSIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

unsigned
FUNC6(int fd)
{
	unsigned secsize;
	struct stat sb;

	if (FUNC2(fd, &sb) == -1)
		FUNC3("fstat(): %s.", FUNC5(errno));
	if (FUNC0(sb.st_mode)) {
		if (FUNC4(fd, DIOCGSECTORSIZE, &secsize) == -1) {
			FUNC3("Can't get sector size: %s.",
			    FUNC5(errno));
		}
	} else if (FUNC1(sb.st_mode)) {
		secsize = 512;
	} else {
		FUNC3("Unsupported file system object.");
	}
	return (secsize);
}