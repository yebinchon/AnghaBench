#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * b_buf; } ;
struct TYPE_6__ {TYPE_1__ b_un; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_SUPERBLK ; 
 int /*<<< orphan*/  DEV_BSIZE ; 
 int /*<<< orphan*/  EEXIT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SBLOCKSIZE ; 
 TYPE_2__ asblk ; 
 int /*<<< orphan*/  dev_bsize ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ fsmodified ; 
 int fswritefd ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ lfdir ; 
 TYPE_2__ sblk ; 
 int /*<<< orphan*/  secsize ; 

void
FUNC3(void)
{

	fswritefd = -1;
	fsmodified = 0;
	lfdir = 0;
	FUNC2(&sblk, BT_SUPERBLK);
	FUNC2(&asblk, BT_SUPERBLK);
	sblk.b_un.b_buf = FUNC0(SBLOCKSIZE);
	asblk.b_un.b_buf = FUNC0(SBLOCKSIZE);
	if (sblk.b_un.b_buf == NULL || asblk.b_un.b_buf == NULL)
		FUNC1(EEXIT, "cannot allocate space for superblock");
	dev_bsize = secsize = DEV_BSIZE;
}