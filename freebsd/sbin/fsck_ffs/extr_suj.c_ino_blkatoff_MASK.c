#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__* di_extb; scalar_t__ di_extsize; } ;
union dinode {TYPE_1__ dp2; } ;
typedef  int ufs_lbn_t ;
typedef  scalar_t__ ufs2_daddr_t ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_8__ {int fs_frag; scalar_t__ fs_maxsymlinklen; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (union dinode*,int /*<<< orphan*/ ) ; 
 scalar_t__ IFLNK ; 
 int FUNC1 (TYPE_2__*) ; 
 int UFS_NDADDR ; 
 int UFS_NIADDR ; 
 int UFS_NXADDR ; 
 int /*<<< orphan*/ * di_db ; 
 int /*<<< orphan*/ * di_ib ; 
 int /*<<< orphan*/  di_mode ; 
 int /*<<< orphan*/  di_size ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 TYPE_2__* fs ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (TYPE_2__*,scalar_t__) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__,int) ; 

__attribute__((used)) static ufs2_daddr_t
FUNC7(union dinode *ip, ino_t ino, ufs_lbn_t lbn, int *frags)
{
	ufs_lbn_t tmpval;
	ufs_lbn_t cur;
	ufs_lbn_t next;
	int i;

	/*
	 * Handle extattr blocks first.
	 */
	if (lbn < 0 && lbn >= -UFS_NXADDR) {
		lbn = -1 - lbn;
		if (lbn > FUNC4(fs, ip->dp2.di_extsize - 1))
			return (0);
		*frags = FUNC5(fs, FUNC6(fs, ip->dp2.di_extsize, lbn));
		return (ip->dp2.di_extb[lbn]);
	}
	/*
	 * Now direct and indirect.
	 */
	if (FUNC0(ip, di_mode) == IFLNK &&
	    FUNC0(ip, di_size) < fs->fs_maxsymlinklen)
		return (0);
	if (lbn >= 0 && lbn < UFS_NDADDR) {
		*frags = FUNC5(fs, FUNC6(fs, FUNC0(ip, di_size), lbn));
		return (FUNC0(ip, di_db[lbn]));
	}
	*frags = fs->fs_frag;

	for (i = 0, tmpval = FUNC1(fs), cur = UFS_NDADDR; i < UFS_NIADDR; i++,
	    tmpval *= FUNC1(fs), cur = next) {
		next = cur + tmpval;
		if (lbn == -cur - i)
			return (FUNC0(ip, di_ib[i]));
		/*
		 * Determine whether the lbn in question is within this tree.
		 */
		if (lbn < 0 && -lbn >= next)
			continue;
		if (lbn > 0 && lbn >= next)
			continue;
		return FUNC3(FUNC0(ip, di_ib[i]), ino, -cur - i, lbn);
	}
	FUNC2("lbn %jd not in ino\n", lbn);
	/* NOTREACHED */
}