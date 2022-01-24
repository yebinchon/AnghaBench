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
typedef  int u_int ;
struct fsrecovery {scalar_t__ fsr_magic; int /*<<< orphan*/  fsr_ncg; int /*<<< orphan*/  fsr_sblkno; int /*<<< orphan*/  fsr_fsbtodb; int /*<<< orphan*/  fsr_fpg; } ;
struct TYPE_2__ {scalar_t__ fs_magic; int /*<<< orphan*/  fs_ncg; int /*<<< orphan*/  fs_sblkno; int /*<<< orphan*/  fs_fsbtodb; int /*<<< orphan*/  fs_fpg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGSECTORSIZE ; 
 scalar_t__ FS_UFS2_MAGIC ; 
 char* FUNC0 (int) ; 
 int SBLOCK_UFS2 ; 
 scalar_t__ FUNC1 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int) ; 
 int dev_bsize ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_1__ sblock ; 

__attribute__((used)) static void
FUNC6(int readfd, int writefd)
{
	struct fsrecovery *fsr;
	char *fsrbuf;
	u_int secsize;

	if (sblock.fs_magic != FS_UFS2_MAGIC ||
	    FUNC4(readfd, DIOCGSECTORSIZE, &secsize) == -1 ||
	    (fsrbuf = FUNC0(secsize)) == NULL ||
	    FUNC1(readfd, fsrbuf, (SBLOCK_UFS2 - secsize) / dev_bsize,
	      secsize) != 0) {
		FUNC5("RECOVERY DATA COULD NOT BE CREATED\n");
		return;
	}
	fsr = (struct fsrecovery *)&fsrbuf[secsize - sizeof *fsr];
	fsr->fsr_magic = sblock.fs_magic;
	fsr->fsr_fpg = sblock.fs_fpg;
	fsr->fsr_fsbtodb = sblock.fs_fsbtodb;
	fsr->fsr_sblkno = sblock.fs_sblkno;
	fsr->fsr_ncg = sblock.fs_ncg;
	FUNC2(writefd, fsrbuf, (SBLOCK_UFS2 - secsize) / secsize, secsize);
	FUNC3(fsrbuf);
}