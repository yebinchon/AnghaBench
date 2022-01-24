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
typedef  union dinode {int dummy; } dinode ;
struct ufs2_dinode {int dummy; } ;
struct TYPE_3__ {scalar_t__ fs_magic; } ;

/* Variables and functions */
 scalar_t__ FS_UFS2_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct ufs2_dinode*) ; 
 int /*<<< orphan*/  pbp ; 
 TYPE_1__ sblock ; 

void
FUNC2(union dinode *dp)
{

	if (sblock.fs_magic == FS_UFS2_MAGIC)
		FUNC1(&sblock, (struct ufs2_dinode *)dp);
	FUNC0(pbp);
}