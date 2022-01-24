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
struct inodesc {int /*<<< orphan*/  id_name; int /*<<< orphan*/  id_fix; scalar_t__ id_parent; scalar_t__ id_number; int /*<<< orphan*/  id_func; int /*<<< orphan*/  id_type; } ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 int ALTERED ; 
 int /*<<< orphan*/  DATA ; 
 int FUNC0 (union dinode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union dinode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DIRBLKSIZ ; 
 int /*<<< orphan*/  DONTKNOW ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 scalar_t__ UFS_ROOTINO ; 
 int FUNC2 (union dinode*,struct inodesc*) ; 
 int /*<<< orphan*/  di_size ; 
 scalar_t__ FUNC3 (union dinode*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,scalar_t__) ; 
 union dinode* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (union dinode*) ; 
 scalar_t__ maxino ; 
 int /*<<< orphan*/  FUNC7 (struct inodesc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mkentry ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

int
FUNC10(ino_t parent, ino_t ino, const char *name)
{
	union dinode *dp;
	struct inodesc idesc;
	char pathbuf[MAXPATHLEN + 1];

	if (parent < UFS_ROOTINO || parent >= maxino ||
	    ino < UFS_ROOTINO || ino >= maxino)
		return (0);
	FUNC7(&idesc, 0, sizeof(struct inodesc));
	idesc.id_type = DATA;
	idesc.id_func = mkentry;
	idesc.id_number = parent;
	idesc.id_parent = ino;	/* this is the inode to enter */
	idesc.id_fix = DONTKNOW;
	idesc.id_name = FUNC9(name);
	dp = FUNC5(parent);
	if (FUNC0(dp, di_size) % DIRBLKSIZ) {
		FUNC1(dp, di_size, FUNC8(FUNC0(dp, di_size), DIRBLKSIZ));
		FUNC6(dp);
	}
	if ((FUNC2(dp, &idesc) & ALTERED) != 0)
		return (1);
	FUNC4(pathbuf, parent, parent);
	dp = FUNC5(parent);
	if (FUNC3(dp, pathbuf) == 0)
		return (0);
	return (FUNC2(dp, &idesc) & ALTERED);
}