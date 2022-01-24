#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ufs2_daddr_t ;
struct TYPE_7__ {int /*<<< orphan*/  d_error; } ;
struct TYPE_6__ {scalar_t__ fs_bsize; } ;

/* Variables and functions */
 int MAXBSIZE ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,void*,size_t) ; 
 TYPE_3__* diskp ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* fs ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(ufs2_daddr_t blk, int level)
{
	char sblks[MAXBSIZE];
	ufs2_daddr_t *blks;
	int i;

	if (FUNC2(diskp, FUNC4(fs, blk), (void *)&sblks, (size_t)fs->fs_bsize) == -1)
		FUNC3(1, "bread: %s", diskp->d_error);
	blks = (ufs2_daddr_t *)&sblks;
	for (i = 0; i < FUNC0(fs); i++) {
		if (blks[i] == 0)
			break;
		if (level == 0)
			FUNC1(blks[i], fs->fs_bsize);
		else
			FUNC5(blks[i], level - 1);
	}
	FUNC1(blk, fs->fs_bsize);
}