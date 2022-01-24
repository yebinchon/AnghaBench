#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
union dinodep {TYPE_2__* dp2; TYPE_1__* dp1; } ;
typedef  scalar_t__ off_t ;
typedef  int ino_t ;
struct TYPE_11__ {int /*<<< orphan*/  d_error; } ;
struct TYPE_10__ {scalar_t__ fs_magic; } ;
struct TYPE_9__ {scalar_t__* di_db; scalar_t__ di_size; } ;
struct TYPE_8__ {scalar_t__* di_db; scalar_t__ di_size; } ;

/* Variables and functions */
 scalar_t__ FS_UFS1_MAGIC ; 
 int UFS_NDADDR ; 
 int /*<<< orphan*/  UFS_ROOTINO ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_6__ disk ; 
 scalar_t__ FUNC1 (TYPE_6__*,union dinodep*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__,int) ; 
 TYPE_3__ sblock ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static ino_t
FUNC6(void)
{
	union dinodep dp;
	ino_t ino;
	int i;

	if (FUNC1(&disk, &dp, UFS_ROOTINO) != 0) {
		FUNC4("Failed to get root inode: %s", disk.d_error);
		return (-1);
	}
	if (sblock.fs_magic == FS_UFS1_MAGIC) {
		if ((off_t)dp.dp1->di_size >= FUNC2(&sblock, UFS_NDADDR)) {
			FUNC5("UFS_ROOTINO extends beyond direct blocks.");
			return (-1);
		}
		for (i = 0; i < UFS_NDADDR; i++) {
			if (dp.dp1->di_db[i] == 0)
				break;
			if ((ino = FUNC0(dp.dp1->di_db[i],
			    FUNC3(&sblock, (off_t)dp.dp1->di_size, i))) != 0)
				return (ino);
		}
	} else {
		if ((off_t)dp.dp2->di_size >= FUNC2(&sblock, UFS_NDADDR)) {
			FUNC5("UFS_ROOTINO extends beyond direct blocks.");
			return (-1);
		}
		for (i = 0; i < UFS_NDADDR; i++) {
			if (dp.dp2->di_db[i] == 0)
				break;
			if ((ino = FUNC0(dp.dp2->di_db[i],
			    FUNC3(&sblock, (off_t)dp.dp2->di_size, i))) != 0)
				return (ino);
		}
	}

	return (0);
}