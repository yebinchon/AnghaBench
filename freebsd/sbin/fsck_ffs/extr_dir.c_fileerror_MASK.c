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
typedef  union dinode {int dummy; } dinode ;
typedef  char* uintmax_t ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 int FUNC0 (union dinode*,int /*<<< orphan*/ ) ; 
 int IFDIR ; 
 int IFMT ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 scalar_t__ UFS_ROOTINO ; 
 int /*<<< orphan*/  di_mode ; 
 scalar_t__ FUNC1 (union dinode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 
 union dinode* FUNC3 (scalar_t__) ; 
 scalar_t__ maxino ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,union dinode*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 

void
FUNC8(ino_t cwd, ino_t ino, const char *errmesg)
{
	union dinode *dp;
	char pathbuf[MAXPATHLEN + 1];

	FUNC7("%s ", errmesg);
	if (ino < UFS_ROOTINO || ino > maxino) {
		FUNC4("out-of-range inode number %ju", (uintmax_t)ino);
		return;
	}
	dp = FUNC3(ino);
	FUNC6(ino, dp);
	FUNC5("\n");
	FUNC2(pathbuf, cwd, ino);
	if (FUNC1(dp))
		FUNC4("%s=%s\n",
		    (FUNC0(dp, di_mode) & IFMT) == IFDIR ? "DIR" : "FILE",
		    pathbuf);
	else
		FUNC4("NAME=%s\n", pathbuf);
}