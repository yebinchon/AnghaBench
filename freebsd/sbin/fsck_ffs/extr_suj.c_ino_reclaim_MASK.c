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
typedef  union dinode {int dummy; } dinode ;
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint32_t ;
struct ufs2_dinode {int dummy; } ;
struct ufs1_dinode {int dummy; } ;
typedef  scalar_t__ ino_t ;
struct TYPE_2__ {scalar_t__ fs_magic; } ;

/* Variables and functions */
 int FUNC0 (union dinode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union dinode*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FS_UFS1_MAGIC ; 
 int IFDIR ; 
 int IFMT ; 
 scalar_t__ UFS_ROOTINO ; 
 int VISIT_EXT ; 
 int VISIT_INDIR ; 
 int /*<<< orphan*/  blk_free_visit ; 
 int /*<<< orphan*/  FUNC2 (union dinode*,int) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  di_gen ; 
 int /*<<< orphan*/  di_mode ; 
 int /*<<< orphan*/  di_nlink ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__* fs ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  ino_free_children ; 
 int /*<<< orphan*/  FUNC6 (union dinode*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC8(union dinode *ip, ino_t ino, int mode)
{
	uint32_t gen;

	if (ino == UFS_ROOTINO)
		FUNC3("Attempting to free UFS_ROOTINO\n");
	if (debug)
		FUNC7("Truncating and freeing ino %ju, nlink %d, mode %o\n",
		    (uintmax_t)ino, FUNC0(ip, di_nlink), FUNC0(ip, di_mode));

	/* We are freeing an inode or directory. */
	if ((FUNC0(ip, di_mode) & IFMT) == IFDIR)
		FUNC6(ip, ino, ino_free_children, 0);
	FUNC1(ip, di_nlink, 0);
	FUNC6(ip, ino, blk_free_visit, VISIT_EXT | VISIT_INDIR);
	/* Here we have to clear the inode and release any blocks it holds. */
	gen = FUNC0(ip, di_gen);
	if (fs->fs_magic == FS_UFS1_MAGIC)
		FUNC2(ip, sizeof(struct ufs1_dinode));
	else
		FUNC2(ip, sizeof(struct ufs2_dinode));
	FUNC1(ip, di_gen, gen);
	FUNC4(ino);
	FUNC5(ino, mode);
	return;
}