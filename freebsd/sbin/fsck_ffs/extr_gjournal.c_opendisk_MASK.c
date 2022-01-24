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
struct TYPE_4__ {int /*<<< orphan*/  d_fs; int /*<<< orphan*/  d_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  devnam ; 
 TYPE_1__ disk ; 
 TYPE_1__* diskp ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * fs ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void)
{
	if (diskp != NULL)
		return;
	diskp = &disk;
	if (FUNC1(diskp, devnam) == -1) {
		FUNC0(1, "ufs_disk_fillout(%s) failed: %s", devnam,
		    diskp->d_error);
	}
	fs = &diskp->d_fs;
}