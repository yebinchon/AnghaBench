#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int fs_clean; } ;

/* Variables and functions */
 int /*<<< orphan*/  devnam ; 
 int /*<<< orphan*/ * diskp ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* fs ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void)
{

	fs->fs_clean = 1;
	if (FUNC2(diskp, 0) == -1)
		FUNC0(1, "sbwrite(%s)", devnam);
	if (FUNC3(diskp) == -1)
		FUNC0(1, "ufs_disk_close(%s)", devnam);
	FUNC1(diskp);
	diskp = NULL;
	fs = NULL;
}