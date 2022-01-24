#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {long dd_loc; int /*<<< orphan*/  dd_buf; int /*<<< orphan*/  dd_fd; int /*<<< orphan*/  dd_size; } ;
typedef  TYPE_1__ RST_DIR ;

/* Variables and functions */
 int DIRBLKSIZ ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (long,int) ; 
 long FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC5(RST_DIR *dirp, long loc, long base)
{

	if (loc == FUNC4(dirp))
		return;
	loc -= base;
	if (loc < 0)
		FUNC0(stderr, "bad seek pointer to rst_seekdir %ld\n", loc);
	(void) FUNC1(dirp->dd_fd, base + FUNC3(loc, DIRBLKSIZ), SEEK_SET);
	dirp->dd_loc = loc & (DIRBLKSIZ - 1);
	if (dirp->dd_loc != 0)
		dirp->dd_size = FUNC2(dirp->dd_fd, dirp->dd_buf, DIRBLKSIZ);
}