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
typedef  int /*<<< orphan*/  ufs2_daddr_t ;
struct inoinfo {size_t i_parent; size_t i_dotdot; size_t i_number; int i_numblks; void** i_blks; void* i_isize; struct inoinfo* i_nexthash; } ;
typedef  size_t ino_t ;
struct TYPE_2__ {int /*<<< orphan*/  fs_bsize; } ;

/* Variables and functions */
 void* FUNC0 (union dinode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EEXIT ; 
 int FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int UFS_NDADDR ; 
 int UFS_NIADDR ; 
 size_t UFS_ROOTINO ; 
 int /*<<< orphan*/ * di_db ; 
 int /*<<< orphan*/ * di_ib ; 
 int /*<<< orphan*/  di_size ; 
 size_t dirhash ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (void*,int /*<<< orphan*/ ) ; 
 struct inoinfo** inphead ; 
 scalar_t__ inplast ; 
 struct inoinfo** inpsort ; 
 scalar_t__ listmax ; 
 scalar_t__ FUNC5 (char*,scalar_t__,int) ; 
 TYPE_1__ sblock ; 

void
FUNC6(union dinode *dp, ino_t inumber)
{
	struct inoinfo *inp, **inpp;
	int i, blks;

	if (FUNC4(FUNC0(dp, di_size), sblock.fs_bsize) > UFS_NDADDR)
		blks = UFS_NDADDR + UFS_NIADDR;
	else if (FUNC0(dp, di_size) > 0)
		blks = FUNC4(FUNC0(dp, di_size), sblock.fs_bsize);
	else
		blks = 1;
	inp = (struct inoinfo *)
		FUNC2(sizeof(*inp) + (blks - 1) * sizeof(ufs2_daddr_t));
	if (inp == NULL)
		FUNC3(EEXIT, "cannot increase directory list");
	inpp = &inphead[inumber % dirhash];
	inp->i_nexthash = *inpp;
	*inpp = inp;
	inp->i_parent = inumber == UFS_ROOTINO ? UFS_ROOTINO : (ino_t)0;
	inp->i_dotdot = (ino_t)0;
	inp->i_number = inumber;
	inp->i_isize = FUNC0(dp, di_size);
	inp->i_numblks = blks;
	for (i = 0; i < FUNC1(blks, UFS_NDADDR); i++)
		inp->i_blks[i] = FUNC0(dp, di_db[i]);
	if (blks > UFS_NDADDR)
		for (i = 0; i < UFS_NIADDR; i++)
			inp->i_blks[UFS_NDADDR + i] = FUNC0(dp, di_ib[i]);
	if (inplast == listmax) {
		listmax += 100;
		inpsort = (struct inoinfo **)FUNC5((char *)inpsort,
		    listmax, sizeof(struct inoinfo *));
		if (inpsort == NULL)
			FUNC3(EEXIT, "cannot increase directory list");
	}
	inpsort[inplast++] = inp;
}