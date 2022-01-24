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
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_3__ {int /*<<< orphan*/  fs_bsize; int /*<<< orphan*/  fs_fsize; } ;

/* Variables and functions */
 int MAXBSIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  disk ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ sblock ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(ufs2_daddr_t blk, ufs2_daddr_t nblk, off_t size, ino_t ino)
{
	char block[MAXBSIZE];

	if (FUNC0(&disk, FUNC4(&sblock, blk), block,
	    FUNC5(size, sblock.fs_fsize)) <= 0) {
		FUNC6("Failed to read dir block");
		return (-1);
	}
	FUNC2(block, size);
	if (FUNC1(&disk, FUNC4(&sblock, nblk), block, sblock.fs_bsize)
	    <= 0) {
		FUNC6("Failed to write dir block");
		return (-1);
	}

	return (FUNC3(nblk, size, ino));
}