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
 scalar_t__ B_flag ; 
 scalar_t__ ENXIO ; 
 scalar_t__ EPERM ; 
 scalar_t__ I_flag ; 
 scalar_t__ a_flag ; 
 int /*<<< orphan*/  disk ; 
 scalar_t__ errno ; 
 int fd ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(int flag)
{
	int rwmode;

	/* Write mode if one of these flags are set. */
	rwmode = (a_flag || I_flag || B_flag || flag);
	fd = FUNC0(disk, rwmode);
	/* If the mode fails, try read-only if we didn't. */
	if (fd == -1 && errno == EPERM && rwmode)
		fd = FUNC0(disk, 0);
	if (fd == -1 && errno == ENXIO)
		return -2;
	if (fd == -1) {
		FUNC2("can't open device %s", disk);
		return -1;
	}
	if (FUNC1() == -1) {
		FUNC2("can't get disk parameters on %s", disk);
		return -1;
	}
	return fd;
}