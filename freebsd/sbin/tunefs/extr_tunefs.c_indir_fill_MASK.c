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
typedef  scalar_t__ ufs2_daddr_t ;
typedef  int /*<<< orphan*/  ufs1_daddr_t ;
typedef  int /*<<< orphan*/  indirbuf ;
struct TYPE_4__ {scalar_t__ fs_magic; int /*<<< orphan*/  fs_bsize; } ;

/* Variables and functions */
 scalar_t__ FS_UFS1_MAGIC ; 
 int MAXBSIZE ; 
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  disk ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC4 () ; 
 TYPE_1__ sblock ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(ufs2_daddr_t blk, int level, int *resid)
{
	char indirbuf[MAXBSIZE];
	ufs1_daddr_t *bap1;
	ufs2_daddr_t *bap2;
	ufs2_daddr_t nblk;
	int ncnt;
	int cnt;
	int i;

	FUNC2(indirbuf, sizeof(indirbuf));
	bap1 = (ufs1_daddr_t *)indirbuf;
	bap2 = (void *)bap1;
	cnt = 0;
	for (i = 0; i < FUNC0(&sblock) && *resid != 0; i++) {
		nblk = FUNC4();
		if (nblk <= 0)
			return (-1);
		cnt++;
		if (sblock.fs_magic == FS_UFS1_MAGIC)
			*bap1++ = nblk;
		else
			*bap2++ = nblk;
		if (level != 0) {
			ncnt = FUNC6(nblk, level - 1, resid);
			if (ncnt <= 0)
				return (-1);
			cnt += ncnt;
		} else 
			(*resid)--;
	}
	if (FUNC1(&disk, FUNC3(&sblock, blk), indirbuf,
	    sblock.fs_bsize) <= 0) {
		FUNC5("Failed to write indirect");
		return (-1);
	}
	return (cnt);
}