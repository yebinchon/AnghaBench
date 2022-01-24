#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
union dinodep {TYPE_2__* dp2; TYPE_1__* dp1; } ;
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ ino_t ;
struct TYPE_10__ {int /*<<< orphan*/  d_error; } ;
struct TYPE_9__ {scalar_t__ fs_magic; } ;
struct TYPE_8__ {scalar_t__ di_flags; } ;
struct TYPE_7__ {scalar_t__ di_flags; } ;

/* Variables and functions */
 scalar_t__ FS_UFS1_MAGIC ; 
 TYPE_4__ disk ; 
 scalar_t__ FUNC0 (TYPE_4__*,union dinodep*,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 TYPE_3__ sblock ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(void)
{
	union dinodep dp;
	ino_t ino;

	ino = FUNC1();
	if (ino == (ino_t)-1 || ino == 0) {
		FUNC5("Journal file does not exist");
		return;
	}
	FUNC2("Clearing journal flags from inode %ju\n", (uintmax_t)ino);
	if (FUNC0(&disk, &dp, ino) != 0) {
		FUNC4("Failed to get journal inode: %s", disk.d_error);
		return;
	}
	if (sblock.fs_magic == FS_UFS1_MAGIC)
		dp.dp1->di_flags = 0;
	else
		dp.dp2->di_flags = 0;
	if (FUNC3(&disk) < 0) {
		FUNC4("Failed to write journal inode: %s", disk.d_error);
		return;
	}
}