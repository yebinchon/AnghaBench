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
struct stat {int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGMEDIASIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

off_t
FUNC6(int fd)
{
	off_t mediasize;
	struct stat sb;

	if (FUNC2(fd, &sb) == -1)
		FUNC3("fstat(): %s.", FUNC5(errno));
	if (FUNC0(sb.st_mode)) {
		if (FUNC4(fd, DIOCGMEDIASIZE, &mediasize) == -1) {
			FUNC3("Can't get media size: %s.",
			    FUNC5(errno));
		}
	} else if (FUNC1(sb.st_mode)) {
		mediasize = sb.st_size;
	} else {
		FUNC3("Unsupported file system object.");
	}
	return (mediasize);
}