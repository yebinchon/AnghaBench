#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ufs2_daddr_t ;
struct direct {int /*<<< orphan*/  d_name; int /*<<< orphan*/  d_namlen; int /*<<< orphan*/  d_type; scalar_t__ d_reclen; int /*<<< orphan*/  d_ino; } ;
typedef  size_t off_t ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_3__ {scalar_t__ fs_bsize; } ;

/* Variables and functions */
 scalar_t__ DIRBLKSIZ ; 
 int /*<<< orphan*/  DT_REG ; 
 int MAXBSIZE ; 
 int /*<<< orphan*/  SUJ_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  disk ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__ sblock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(ufs2_daddr_t blk, off_t off, ino_t ino)
{
	struct direct *dp;
	char block[MAXBSIZE];

	if (FUNC1(&disk, FUNC5(&sblock, blk), block, sblock.fs_bsize) <= 0) {
		FUNC7("Failed to read dir block");
		return (-1);
	}
	FUNC3(&block[off], sblock.fs_bsize - off);
	dp = (struct direct *)&block[off];
	dp->d_ino = ino;
	dp->d_reclen = DIRBLKSIZ;
	dp->d_type = DT_REG;
	dp->d_namlen = FUNC6(SUJ_FILE);
	FUNC0(SUJ_FILE, &dp->d_name, FUNC6(SUJ_FILE));
	FUNC4(block, off + DIRBLKSIZ);
	if (FUNC2(&disk, FUNC5(&sblock, blk), block, sblock.fs_bsize) <= 0) {
		FUNC7("Failed to write dir block");
		return (-1);
	}
	return (0);
}